{ pkgs, ... }:
let
  sources = import ./npins;
in
(pkgs.lib.makeExtensible (
  _:
  pkgs.lib.mapAttrs' (
    name: src:
    pkgs.lib.nameValuePair (pkgs.lib.removeSuffix ".xplr" name) (
      pkgs.stdenv.mkDerivation {
        pname = name;
        version = src.revision;
        inherit src;
        buildPhase = ''
          runHook preBuild

          cp -r ${src} $out

          runHook postBuild
        '';
      }
    )
  ) (pkgs.lib.filterAttrs (_: v: pkgs.lib.isStorePath v) sources)
)).extend
  (pkgs.callPackage ./_overrides.nix { })
