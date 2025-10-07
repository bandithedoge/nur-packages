{ pkgs, ... }:
let
  sources = import ./npins { };
in
(pkgs.lib.makeExtensible (
  _:
  pkgs.lib.mapAttrs' (
    name: src':
    let
      src = src' { inherit pkgs; };
    in
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
  ) sources
)).extend
  (pkgs.callPackage ./_overrides.nix { })
