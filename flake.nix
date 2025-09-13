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
            config.allowUnfree = true;
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
                  derivations = (builtins.attrValues (pkgs.lib.filterAttrs (k: v: !(cacheable ? k)) buildable)) ++ [
                    self'.devShells.default
                  ];
                })
                saveFromGC
                ;
            };

          devShells.default = pkgs.mkShell {
            packages =
              with pkgs;
              with inputs;
              [
                lixPackageSets.git.nix-eval-jobs
                lixPackageSets.git.nix-fast-build
                mozilla-addons-to-nix.packages.${system}.default
                node2nix
                npins
                nvfetcher
              ];
          };

          treefmt.config = {
            projectRootFile = "flake.nix";
            programs = {
              clang-format.enable = true;
              nixfmt.enable = true;
              prettier.enable = true;
              ruff-format.enable = true;
              shfmt.enable = true;
              taplo.enable = true;
            };
          };
        };
    };
}
