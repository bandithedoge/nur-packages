{
  sources,
  utils,

  lib,
  stdenv,

  autoPatchelfHook,
  unzip,
}:
stdenv.mkDerivation {
  inherit (sources.wavetable-bin) pname version src;
  sourceRoot = ".";

  nativeBuildInputs = [
    autoPatchelfHook
    unzip
  ];

  buildInputs = utils.juce.commonBuildInputs;

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/lib/{lv2,vst3,vst}
    cp -r Wavetable.lv2 $out/lib/lv2
    cp -r Wavetable.vst3 $out/lib/vst3
    cp Wavetable.so $out/lib/vst

    runHook postBuild
  '';

  meta = with lib; {
    description = "Wavetable synth";
    homepage = "https://socalabs.com/synths/wavetable/";
    license = licenses.bsd3;
    platforms = [ "x86_64-linux" ];
  };
}
