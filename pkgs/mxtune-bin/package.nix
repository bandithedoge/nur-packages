{
  sources,

  lib,
  stdenv,

  autoPatchelfHook,
  juceCmakeHook,
  unzip,
}:
stdenv.mkDerivation {
  inherit (sources.mxtune-bin) pname src;
  version = lib.removePrefix "v" sources.mxtune-bin.version;

  nativeBuildInputs = [
    autoPatchelfHook
    unzip
  ];

  buildInputs = juceCmakeHook.commonBuildInputs;

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/lib/vst
    cp mx_tune.so $out/lib/vst

    runHook postInstall
  '';

  meta = with lib; {
    description = "Pitch correction plugin for VST";
    homepage = "https://github.com/liuanlin-mx/MXTune";
    license = licenses.gpl3Plus;
    platforms = [ "x86_64-linux" ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
