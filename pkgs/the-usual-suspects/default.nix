{
  pkgs,
  sources,
  ...
}: {
  osirus = pkgs.callPackage ./osirus.nix {inherit sources;};
}
