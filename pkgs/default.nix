{ pkgs ? import <nixpkgs> { } }:
let
  sources = import ../_sources/generated.nix {
    inherit (pkgs) fetchurl fetchgit;
  };
  callPackage' = pkg: pkgs.callPackage pkg { inherit pkgs sources; };
in
{
  dwm-flexipatch = callPackage' ./flexipatch/dwm.nix;
  st-flexipatch = callPackage' ./flexipatch/st.nix;
}
