{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.tonez) pname version src;

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
    unzip
  ];

  buildInputs = with pkgs; [
    csound
    freetype
    libGL
    stdenv.cc.cc.lib
  ];

  buildPhase = ''
    mkdir -p $out/lib/vst3
    cp -r ToneZ_V2.vst3 $out/lib/vst3
  '';

  meta = with pkgs; {
    description = "Free cross-platform polyphonic synthesizer";
    homepage = "https://www.retornz.com/plugins/tonez";
    license = licenses.gpl3Only;
    platforms = ["x86_64-linux"];
  };
}
