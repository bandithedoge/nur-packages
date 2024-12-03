{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.destruqtor) pname version src;

  sourceRoot = ".";

  nativeBuildInputs = with pkgs; [
    unzip
    autoPatchelfHook
  ];

  buildInputs = with pkgs; [
    libGL
    xorg.libX11
    xorg.libxcb
  ];

  buildPhase = ''
    mkdir -p $out/lib/{clap,vst3}
    cp destruqtor-x86_64-unknown-linux-gnu.clap $out/lib/clap/destruqtor.clap
    cp -r destruqtor-x86_64-unknown-linux-gnu.vst3 $out/lib/vst3/destruqtor.vst3
  '';

  meta = with pkgs.lib; {
    description = "destruqtor is a companding distortion/saturation/exciter plugin. Unlike traditional distortion, destruqtor applies expanding compression before the waveshaper and an opposite compression after the effect, which preserves and emphasises transients and adds more warmth to your sounds without sacrificing dynamic range";
    homepage = "https://fx.amee.ee/plugin/destruqtor/";
    license = licenses.unfree;
    platforms = ["x86_64-linux"];
    sourceProvenance = [sourceTypes.binaryNativeCode];
  };
}
