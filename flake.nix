{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    flake-compat.url = "github:edolstra/flake-compat";

    nvfetcher.url = "github:berberman/nvfetcher";
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

        legacyPackages = import ./default.nix {inherit pkgs;};

        devShells.default = pkgs.mkShell {
          packages = with pkgs;
          with inputs; let
            nix-build-uncached = pkgs.nix-build-uncached.overrideAttrs (_: {
              src = fetchFromGitHub {
                owner = "bandithedoge";
                repo = "nix-build-uncached";
                rev = "249cad9443dba06299bbe8fe35239f5403e8197f";
                hash = "sha256-XgtrBo1ab2dlrhS0zf3Cu1frNs+IKVnifbp4KQ5xN+4=";
              };
            });
          in [
            mozilla-addons-to-nix.packages.${system}.default
            niv
            nix-build-uncached
            node2nix
            nvfetcher.packages.${system}.default
          ];
        };

        treefmt.config = {
          projectRootFile = "flake.nix";
          programs = {
            alejandra.enable = true;
            prettier.enable = true;
            ruff-format.enable = true;
            taplo.enable = true;
          };
        };
      };
    };
}
