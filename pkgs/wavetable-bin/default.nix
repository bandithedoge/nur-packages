{
  pkgs,
  sources,
  utils,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.wavetable-bin) pname version src;
  sourceRoot = ".";

  nativeBuildInputs = with pkgs; [
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

  meta = with pkgs.lib; {
    description = "Wavetable synth";
    homepage = "https://socalabs.com/synths/wavetable/";
    license = licenses.bsd3;
    platforms = [ "x86_64-linux" ];
  };
}
