{
  sources,

  lib,
  stdenv,

  autoPatchelfHook,
}:
stdenv.mkDerivation {
  inherit (sources.digits-bin) pname src;
  version = builtins.replaceStrings [ "_" ] [ "." ] sources.digits-bin.version;

  nativeBuildInputs = [
    autoPatchelfHook
  ];

  buildInputs = [
    stdenv.cc.cc.lib
  ];

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/{lib/vst,share/digits}
    cp DigitsVST_64.so $out/lib/vst
    cp -r Patches $out/share/digits/presets

    runHook postBuild
  '';

  meta = with lib; {
    description = "An advanced phase distortion synthesizer";
    homepage = "http://www.extentofthejam.com/";
    license = licenses.gpl3;
    platforms = [ "x86_64-linux" ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
