{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.showmidi-bin) pname version src;

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
  ];

  buildInputs = with pkgs; [
    alsa-lib
    freetype
    stdenv.cc.cc.lib
  ];

  buildPhase = ''
    mkdir -p $out/{bin,lib/clap,lib/lv2,lib/vst3}
    cp ShowMIDI $out/bin
    cp clap/ShowMIDI.clap $out/lib/clap
    cp -r lv2/ShowMIDI.lv2 $out/lib/lv2
    cp -r vst3/ShowMIDI.vst3 $out/lib/vst3
  '';
}
