{ callPackage', nodejs }:
let
  nodeDeps = callPackage' ./_node2nix/default.nix { inherit nodejs; };
in
{
  inherit (nodeDeps)
    some-sass-language-server
    ;
}
