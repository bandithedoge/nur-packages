{pkgs, ...}: {
  juce = pkgs.callPackage ./juce.nix {};
}
