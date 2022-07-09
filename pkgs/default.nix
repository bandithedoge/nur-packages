{pkgs ? import <nixpkgs> {}}: let
  sources = import ../_sources/generated.nix {
    inherit (pkgs) fetchurl fetchgit fetchFromGitHub;
  };

  callPackage' = pkg: pkgs.callPackage pkg {inherit pkgs sources;};
in {
  vimPlugins = (pkgs.callPackage ./vimPlugins {inherit pkgs;}).extend (import ./vimPlugins/overrides.nix {inherit pkgs;});

  haskellPackages = callPackage' ./haskellPackages;

  dmenu-flexipatch = callPackage' ./flexipatch/dmenu.nix;
  dwm-flexipatch = callPackage' ./flexipatch/dwm.nix;
  st-flexipatch = callPackage' ./flexipatch/st.nix;

  kiwmi = callPackage' ./kiwmi.nix;

  zrythm = callPackage' ./zrythm.nix;

  nimlangserver = callPackage' ./nimlangserver;
}
