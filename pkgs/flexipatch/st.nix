{
  pkgs,
  sources,
  patches ? null,
  extraLibs ? [],
  conf ? null,
}:
pkgs.stdenv.mkDerivation rec {
  pname = "st-flexipatch";
  version = "0.8.5";

  inherit (sources.st-flexipatch) src;

  nativeBuildInputs = with pkgs; [
    pkg-config
    ncurses
    fontconfig
    freetype
  ];

  buildInputs = with pkgs;
    [
      xorg.libX11
      xorg.libXft
    ]
    ++ extraLibs;

  strictDeps = true;

  makeFlags = [
    "PKG_CONFIG=${pkgs.stdenv.cc.targetPrefix}pkg-config"
  ];

  configFile =
    pkgs.lib.optionalString (conf != null)
    (pkgs.writeText "config.def.h" conf);

  prePatch = let
    patchesFile =
      if pkgs.lib.isDerivation conf || builtins.isPath patches
      then patches
      else pkgs.writeText "config.def.h" patches;
  in
    pkgs.lib.optionalString (conf != null) "cp ${patchesFile} patches.def.h";

  postPatch =
    pkgs.lib.optionalString (conf != null) "cp ${configFile} config.def.h"
    + pkgs.lib.optionalString pkgs.stdenv.isDarwin ''
      substituteInPlace config.mk --replace "-lrt" ""
    '';

  preInstall = ''
    export TERMINFO=$out/share/terminfo
  '';

  installFlags = ["PREFIX=$(out)"];

  inherit (pkgs.st) meta;
}
