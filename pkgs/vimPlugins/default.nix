{ pkgs ? import <nixpkgs> { }
, sources ? import ./nix/sources.nix
}:

pkgs.lib.attrsets.mapAttrs'
  (name: src:
    let
      sanitizedName = builtins.replaceStrings
        [ "." ] [ "-" ]
        (pkgs.lib.strings.sanitizeDerivationName name);
    in
    pkgs.lib.attrsets.nameValuePair
      sanitizedName
      (pkgs.vimUtils.buildVimPluginFrom2Nix {
        name = sanitizedName;
        inherit src;
      }))
  sources

# builtins.listToAttrs (pkgs.lib.attrsets.mapAttrsToList
#   (name: value:
#     let
#       sanitizedName = pkgs.lib.strings.sanitizeDerivationName name;
#     in
#     {
#       name = sanitizedName;
#       value = pkgs.vimUtils.buildVimPluginFrom2Nix {
#         name = sanitizedName;
#         src = builtins.fetchTarball {
#           inherit (value) url sha256;
#         };
#       };
#     })
#   sources)
