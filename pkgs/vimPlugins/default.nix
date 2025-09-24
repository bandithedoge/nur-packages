{ pkgs, ... }:
let
  sources = import ./npins;
in
(pkgs.lib.makeExtensible (
  _:
  pkgs.lib.attrsets.mapAttrs' (
    name: src:
    let
      sanitizedName = builtins.replaceStrings [ "." ] [ "-" ] (
        pkgs.lib.strings.sanitizeDerivationName name
      );
    in
    pkgs.lib.attrsets.nameValuePair sanitizedName (
      pkgs.vimUtils.buildVimPlugin {
        pname = sanitizedName;
        version = src.revision;
        inherit src;
        doCheck = false;
      }
    )
  ) sources
)).extend
  (import ./_overrides.nix { inherit pkgs; })
