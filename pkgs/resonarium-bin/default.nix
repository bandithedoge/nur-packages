{
  pkgs,
  sources,
  utils,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.resonarium-bin) pname version;
  srcs = [
    sources.resonarium-bin.src
    sources.resonarium-effect-bin.src
  ];
  sourceRoot = ".";

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
    unzip
  ];

  buildInputs = utils.juce.commonBuildInputs;

  buildPhase = ''
    mkdir -p $out/{bin,lib/vst3}
    cp Standalone/* $out/bin
    cp -r VST3/* $out/lib/vst3
  '';

  meta = with pkgs.lib; {
    description = "An expressive, semi-modular, and comprehensive physical modeling/waveguide synthesizer";
    homepage = "https://github.com/gabrielsoule/resonarium";
    license = licenses.gpl3Plus;
    platforms = [ "x86_64-linux" ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
