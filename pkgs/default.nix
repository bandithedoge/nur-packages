{ pkgs ? import <nixpkgs> { } }: {
  dwm-flexipatch = pkgs.callPackage ./flexipatch/dwm.nix { };
  st-flexipatch = pkgs.callPackage ./flexipatch/st.nix { };
}
