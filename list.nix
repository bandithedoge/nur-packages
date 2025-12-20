{ pkgs, allPackages }:
''
  | Name | Version | Description | License(s) |
  | ---- | ------- | ----------- | ---------- |
''
+ pkgs.lib.concatMapAttrsStringSep "\n" (
  name: value:
  let
    name' =
      let
        path = "`${builtins.replaceStrings [ "/" ] [ "." ] name}`";
      in
      if (pkgs.lib.hasAttrByPath [ "meta" "homepage" ] value) then
        "[${path}](${value.meta.homepage})"
      else
        path;

    version' = pkgs.lib.optionalString (builtins.hasAttr "version" value) value.version;

    value' = pkgs.lib.optionalString (pkgs.lib.hasAttrByPath [ "meta" "description" ] value) (
      pkgs.lib.trim (builtins.elemAt (pkgs.lib.splitString "\n" value.meta.description) 0)
    );

    license' = pkgs.lib.optionalString (pkgs.lib.hasAttrByPath [ "meta" "license" ] value) (
      let
        license = value.meta.license;
      in
      if (builtins.isString license) then
        license
      else
        (
          let
            fmt = l: if (builtins.hasAttr "url" l) then "[${l.fullName}](${l.url})" else l.fullName;
          in
          if (builtins.isList license) then (pkgs.lib.concatMapStringsSep ", " fmt license) else fmt license
        )
    );
  in
  "| ${name'} | ${version'} | ${value'} | ${license'} |"
) allPackages
