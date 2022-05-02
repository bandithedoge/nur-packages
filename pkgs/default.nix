{ pkgs ? import <nixpkgs> { } }:
let
  sources = import ../_sources/generated.nix {
    inherit (pkgs) fetchurl fetchgit fetchFromGitHub;
  };
  callPackage' = pkg: pkgs.callPackage pkg { inherit pkgs sources; };
in
{
  vimPlugins = pkgs.callPackage ./vimPlugins { inherit pkgs; };

  dwm-flexipatch = callPackage' ./flexipatch/dwm.nix;
  st-flexipatch = callPackage' ./flexipatch/st.nix;
}
