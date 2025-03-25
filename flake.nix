{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    flake-utils.url = "github:numtide/flake-utils";

    mozilla-addons-to-nix.url = "sourcehut:~rycee/mozilla-addons-to-nix";
  };
  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = with inputs; [
        flake-parts.flakeModules.easyOverlay
        treefmt-nix.flakeModule
      ];
      systems = ["x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin"];
      perSystem = {
        pkgs,
        system,
        ...
      }: {
        _module.args.pkgs = import inputs.nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };

        legacyPackages = let
          packages = import ./default.nix {inherit pkgs;};
          all = pkgs.lib.recurseIntoAttrs (inputs.flake-utils.lib.flattenTree packages);
          buildable = pkgs.lib.filterAttrs (_: p: !(p.meta.broken or false)) all;
          cacheable = pkgs.lib.filterAttrs (_: p:
            (p.meta.license.free or true)
            && !(p.preferLocalBuild or false)
            && !(pkgs.lib.any (prov: !prov.isSource) (p.meta.sourceProvenance or [])))
          buildable;
        in
          packages
          // {
            _BUILDABLE = buildable;
            _CACHEABLE = cacheable;
          };

        devShells.default = pkgs.mkShell {
          packages = with pkgs;
          with inputs; [
            mozilla-addons-to-nix.packages.${system}.default
            niv
            node2nix
            nvfetcher
            nix-fast-build
          ];
        };

        treefmt.config = {
          projectRootFile = "flake.nix";
          programs = {
            alejandra.enable = true;
            clang-format.enable = true;
            prettier.enable = true;
            ruff-format.enable = true;
            shfmt.enable = true;
            taplo.enable = true;
          };
        };
      };
    };
}
