{ pkgs }:
let
  inherit (pkgs) lib;
  all = import ./all.nix { inherit pkgs; };

  drvPaths =
    attrs:
    builtins.concatMap (
      key:
      let
        val = attrs.${key};
      in
      if lib.isDerivation val then
        [ [ key ] ]
      else if builtins.isAttrs val then
        map (path: [ key ] ++ path) (drvPaths val)
      else
        [ ]
    ) (builtins.attrNames attrs);

in
builtins.filter (
  path:
  let
    eval = builtins.tryEval (lib.hasAttrByPath path pkgs);
  in
  if eval.success then
    let
      ours = lib.attrByPath path [ ] all;
    in
    if (lib.hasAttr "_ignoreDupe" ours && ours._ignoreDupe) then false else eval.value
  else
    false
) (drvPaths all)
