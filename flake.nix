{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    flake-utils.url = "github:numtide/flake-utils";

    npins = {
      url = "github:andir/npins";
      flake = false;
    };
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
              packages = import ./pkgs/default.nix { inherit pkgs; };

              all = inputs.flake-utils.lib.flattenTree (
                pkgs.lib.recurseIntoAttrs (import ./pkgs/all.nix { inherit pkgs; })
              );

              buildable = pkgs.lib.filterAttrs (_: p: !(p.meta.broken || p.meta.insecure)) all;
              cacheable = pkgs.lib.filterAttrs (
                _: p:
                (p.meta.license.free or true)
                && !(p.preferLocalBuild or false)
                && !(pkgs.lib.any (prov: !prov.isSource) (p.meta.sourceProvenance or [ ]))
              ) buildable;
            in
            packages
            // {
              _BUILDABLE = buildable;
              _CACHEABLE = cacheable;

              inherit
                (import "${inputs.cache-nix-action}/saveFromGC.nix" {
                  inherit pkgs inputs;
                  derivations = builtins.attrValues (pkgs.lib.filterAttrs (k: v: !(cacheable ? k)) buildable);
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
                (callPackage "${inputs.npins}/npins.nix" { })
                inputs.mozilla-addons-to-nix.packages.${system}.default
                node2nix
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
                excludes = [
                  "_sources/*"
                  "npins/*"
                ];
              };
              prettier = {
                enable = true;
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
