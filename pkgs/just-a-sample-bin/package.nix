{
  sources,

  stdenv,
  lib,

  autoPatchelfHook,
  juceCmakeHook,
  unzip,
}:
stdenv.mkDerivation {
  inherit (sources.just-a-sample-bin) pname version src;
  sourceRoot = ".";

  nativeBuildInputs = [
    autoPatchelfHook
    unzip
  ];

  buildInputs = juceCmakeHook.commonBuildInputs;

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/lib/vst3
    cp -r JustASample.vst3 $out/lib/vst3

    runHook postBuild
  '';

  meta = with lib; {
    description = "Just a Sample is a modern, open-source audio sampler";
    homepage = "https://bobona.github.io/just-a-sample/";
    license = licenses.mit;
    platforms = platforms.linux;
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
