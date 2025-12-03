{ pkgs }:
let
  all = pkgs.lib.packagesFromDirectoryRecursive {
    callPackage = callPackage';
    directory = ./.;
  };

  callPackage' =
    pkg:
    pkgs.lib.callPackageWith (
      (pkgs.lib.recursiveUpdate pkgs all)
      // {
        inherit callPackage';
        sources = pkgs.callPackage (
          (
            if pkgs.lib.pathIsDirectory pkg then
              pkg
            else
              (pkgs.lib.join "/" (pkgs.lib.dropEnd 1 (pkgs.lib.splitString "/" pkg)))
          )
          + "/_sources/generated.nix"
        ) { };
      }
    ) pkg;

  concat = pkgs.lib.concatStringsSep ".";
in
pkgs.lib.recursiveUpdate
  (pkgs.lib.recursiveUpdate all (
    pkgs.lib.mapAttrsRecursive (
      old: new:
      pkgs.lib.warn "${concat old} has been renamed to ${concat new}" (pkgs.lib.attrByPath new null all)
    ) (import ./_renamed.nix)
  ))
  (
    pkgs.lib.mapAttrsRecursive (
      old: new:
      pkgs.lib.warn "${concat old} is available in nixpkgs as ${concat new}" pkgs.lib.attrByPath new null
        pkgs
    ) (import ./_upstreamed.nix)
  )
// {
  vkdoom = throw "VKDoom has been merged into GZDoom";
}
