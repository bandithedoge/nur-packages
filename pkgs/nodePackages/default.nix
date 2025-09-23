{ pkgs, ... }:
let
  nodeDeps = pkgs.callPackage ./_node2nix/default.nix { nodejs = pkgs.nodejs_latest; };
in
{
  inherit (nodeDeps)
    emmet-ls
    some-sass-language-server
    ;

  emmet-language-server = nodeDeps."@olrtg/emmet-language-server";
  tailwindcss-language-server = nodeDeps."@tailwindcss/language-server";
}
