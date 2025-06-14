{
  pkgs,
  sources,
  utils,
  ...
}:
pkgs.stdenv.mkDerivation {
  pname = "microbiome-bin";
  version = pkgs.lib.removePrefix "v" sources.microbiome-bin-lv2.version;
  srcs = [
    sources.microbiome-bin-lv2.src
    sources.microbiome-bin-vst3.src
  ];

  unpackCmd = "unzip -o $curSrc";
  sourceRoot = ".";

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
    unzip
  ];

  buildInputs =
    with pkgs;
    [
      stdenv.cc.cc.lib
    ]
    ++ utils.juce.commonBuildInputs;

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/lib/{lv2,vst3}
    cp -r Microbiome.lv2 $out/lib/lv2
    cp -r Microbiome.vst3 $out/lib/vst3

    runHook postBuild
  '';

  meta = with pkgs.lib; {
    description = "A delay-based audio effects plugin";
    homepage = "https://github.com/dsmaugy/microbiome";
    license = licenses.gpl3Plus;
    platforms = [ "x86_64-linux" ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
