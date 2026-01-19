{
  sources,

  lib,
  stdenv,

  autoPatchelfHook,
  juceCmakeHook,
  unzip,
}:
stdenv.mkDerivation {
  inherit (sources.wavetable-bin) pname version src;
  sourceRoot = ".";

  nativeBuildInputs = [
    autoPatchelfHook
    unzip
  ];

  buildInputs = juceCmakeHook.commonBuildInputs;

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/lib/{lv2,vst3,vst}
    cp -r lv2/Wavetable.lv2 $out/lib/lv2
    cp -r vst3/Wavetable.vst3 $out/lib/vst3
    cp vst/Wavetable.so $out/lib/vst

    runHook postBuild
  '';

  meta = with lib; {
    description = "Wavetable synth";
    homepage = "https://socalabs.com/synths/wavetable/";
    license = licenses.bsd3;
    platforms = [ "x86_64-linux" ];
  };
}
