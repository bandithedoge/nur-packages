{
  pkgs,
  sources,
  utils,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.guitarix-vst-bin) pname src;
  version = pkgs.lib.removePrefix "v" sources.guitarix-vst-bin.version;
  sourceRoot = ".";

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
    unzip
  ];

  buildInputs = with pkgs;
    [
      fftwFloat
      glibmm
      libsigcxx
      libsndfile
      lilv
      stdenv.cc.cc.lib
    ]
    ++ utils.juce.commonBuildInputs;

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/lib/vst3
    cp -r Guitarix.vst3 $out/lib/vst3

    runHook postBuild
  '';

  meta = with pkgs.lib; {
    description = "guitarix vst3 wrapper for linux";
    homepage = "https://github.com/brummer10/guitarix.vst";
    license = licenses.gpl3Plus;
    platforms = ["x86_64-linux"];
    sourceProvenance = [sourceTypes.binaryNativeCode];
  };
}
