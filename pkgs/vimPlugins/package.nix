{
  callPackage',

  pkgs,
  lib,
  vimUtils,
}:
let
  sources = import ./npins { };
in
(lib.makeExtensible (
  _:
  lib.attrsets.mapAttrs' (
    name: src':
    let
      src = src' { inherit pkgs; };
      sanitizedName = builtins.replaceStrings [ "." ] [ "-" ] (lib.strings.sanitizeDerivationName name);
    in
    lib.attrsets.nameValuePair sanitizedName (
      vimUtils.buildVimPlugin {
        pname = sanitizedName;
        version = src.revision;
        inherit src;
        doCheck = false;
      }
    )
  ) sources
)).extend
  (callPackage' ./_overrides.nix { })
