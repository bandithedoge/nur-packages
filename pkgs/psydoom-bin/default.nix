{
  sources,

  appimageTools,
  lib,
  stdenv,
}:
let
  sourceMap = with sources; {
    x86_64-linux = psydoom-bin-x86_64;
    aarch64-linux = psydoom-bin-aarch64;
    armv6l-linux = psydoom-bin-armhf;
    armv7a-linux = psydoom-bin-armhf;
    armv7l-linux = psydoom-bin-armhf;
  };

  source = sourceMap.${stdenv.system} or sourceMap.x86_64-linux;
in
appimageTools.wrapType2 {
  pname = "psydoom";
  inherit (source) version src;

  meta = with lib; {
    description = "A backport of PSX Doom to PC";
    homepage = "https://github.com/BodbDearg/PsyDoom";
    license = licenses.gpl3Plus;
    platforms = builtins.attrNames sourceMap;
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
