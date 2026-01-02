{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    flake-utils.url = "github:numtide/flake-utils";

    mozilla-addons-to-nix.url = "sourcehut:~rycee/mozilla-addons-to-nix";

    cache-nix-action = {
      url = "github:nix-community/cache-nix-action";
      flake = false;
    };
  };
  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = with inputs; [
        flake-parts.flakeModules.easyOverlay
        treefmt-nix.flakeModule
      ];
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      perSystem =
        {
          pkgs,
          system,
          self',
          ...
        }:
        {
          _module.args.pkgs = import inputs.nixpkgs {
            inherit system;
            config = {
              allowAliases = false;
              allowUnfree = true;
            };
          };

          legacyPackages =
            let
              allPackages = inputs.flake-utils.lib.flattenTree (import ./all.nix { inherit pkgs; });

              isBuildable =
                pkg:
                (
                  (builtins.tryEval pkg).success
                  && !(
                    (if pkgs.lib.hasAttrByPath [ "meta" "broken" ] pkg then pkg.meta.broken else false)
                    || (if pkgs.lib.hasAttrByPath [ "meta" "insecure" ] pkg then pkg.meta.insecure else false)
                  )
                );
              isCacheable =
                pkg:
                isBuildable pkg
                && pkg.meta.license.free or true
                && !(pkg.preferLocalBuild or false)
                && !(pkgs.lib.any (prov: !prov.isSource) (pkg.meta.sourceProvenance or [ ]));

              buildable = pkgs.lib.filterAttrs (_: isBuildable) allPackages;
              cacheable = pkgs.lib.filterAttrs (_: isCacheable) allPackages;
              uncacheable = pkgs.lib.filterAttrs (x: _: !builtins.elem x (builtins.attrNames cacheable)) buildable;
            in
            import ./default.nix { inherit pkgs; }
            // {
              _BUILDABLE = buildable;
              _CACHEABLE = cacheable;
              _UNCACHEABLE = uncacheable;

              _LIST = ''
                - ✔️ - cached
                - 🆗 - buildable
                - ❌ - broken

                | Name | Version | Description | License(s) |
                | ---- | ------- | ----------- | ---------- |
              ''
              + pkgs.lib.concatMapAttrsStringSep "\n" (
                name: value:
                let
                  name' =
                    let
                      path = "`${builtins.replaceStrings [ "/" ] [ "." ] name}`";
                      status =
                        if isCacheable value then
                          "✔️"
                        else if isBuildable value then
                          "🆗"
                        else
                          "❌";
                    in
                    if (pkgs.lib.hasAttrByPath [ "meta" "homepage" ] value) then
                      "${status} [${path}](${value.meta.homepage})"
                    else
                      path;

                  version' = pkgs.lib.optionalString (builtins.hasAttr "version" value) value.version;

                  value' = pkgs.lib.optionalString (pkgs.lib.hasAttrByPath [ "meta" "description" ] value) (
                    pkgs.lib.trim (builtins.elemAt (pkgs.lib.splitString "\n" value.meta.description) 0)
                  );

                  license' = pkgs.lib.optionalString (pkgs.lib.hasAttrByPath [ "meta" "license" ] value) (
                    let
                      license = value.meta.license;
                    in
                    if (builtins.isString license) then
                      license
                    else
                      (
                        let
                          fmt = l: if (builtins.hasAttr "url" l) then "[${l.fullName}](${l.url})" else l.fullName;
                        in
                        if (builtins.isList license) then (pkgs.lib.concatMapStringsSep ", " fmt license) else fmt license
                      )
                  );
                in
                "| ${name'} | ${version'} | ${value'} | ${license'} |"
              ) allPackages;

              inherit
                (import "${inputs.cache-nix-action}/saveFromGC.nix" {
                  inherit pkgs inputs;
                  derivations =
                    (builtins.attrValues (pkgs.lib.filterAttrs (k: v: !(cacheable ? k)) buildable))
                    ++ (builtins.attrValues self'.devShells);
                })
                saveFromGC
                ;
            };

          devShells = {
            build = pkgs.mkShell {
              packages = with pkgs.lixPackageSets.latest; [
                nix-eval-jobs
                nix-fast-build
              ];
            };

            update = pkgs.mkShell {
              packages = with pkgs; [
                inputs.mozilla-addons-to-nix.packages.${system}.default
                node2nix
                npins
                nushell
                nvfetcher
              ];
            };

            default = pkgs.mkShell {
              inputsFrom = with self'.devShells; [
                build
                update
              ];
            };
          };

          treefmt.config = {
            projectRootFile = "flake.nix";
            programs = {
              clang-format.enable = true;
              nixfmt = {
                enable = true;
                package = pkgs.nixfmt;
                excludes = [
                  "_sources/*"
                  "npins/*"
                ];
              };
              prettier = {
                enable = true;
                package = pkgs.prettier;
                excludes = [ "_sources/*" ];
              };
              ruff-format.enable = true;
              shfmt.enable = true;
              taplo = {
                enable = true;
                excludes = [
                  "_sources/*"
                  "npins/*"
                ];
              };
              keep-sorted.enable = true;
            };
          };
        };
    };
  nixConfig = {
    extra-substituters = [ "https://bandithedoge.cachix.org" ];
    extra-trusted-public-keys = [
      "bandithedoge.cachix.org-1:ZtcHw1anyEa4t6H8m3o/ctYFrwYFPAwoENSvofamE6g="
    ];
  };
}
