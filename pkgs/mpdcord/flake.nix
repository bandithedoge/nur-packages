{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
    flake-compat.url = "github:edolstra/flake-compat";
    flake-compat.flake = false;
  };
  outputs = { self, nixpkgs, flake-utils, ... }@inputs:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs { inherit system; };
      in with pkgs; {
        defaultPackage = buildGoPackage {
          pname = "mpdcord";
          version = "0.1";
          src = ./.;
          goDeps = ./deps.nix;
          goPackagePath = "github.com/bandithedoge/mpdcord";
          buildinputs = [ go vgo2nix ];
          preConfigure = ''
            ${vgo2nix}/bin/vgo2nix
          '';
        };
      });
}
