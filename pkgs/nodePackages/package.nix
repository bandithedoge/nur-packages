{ callPackage', nodejs }:
let
  nodeDeps = callPackage' ./_node2nix/default.nix { inherit nodejs; };
in
{
  inherit (nodeDeps)
    emmet-ls
    some-sass-language-server
    ;

  emmet-language-server = nodeDeps."@olrtg/emmet-language-server";
  tailwindcss-language-server = nodeDeps."@tailwindcss/language-server";
}
