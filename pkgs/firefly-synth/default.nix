{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.firefly-synth) pname version src;

  nativeBuildInputs = with pkgs; [
    cmake
    pkg-config
  ];

  buildInputs = with pkgs; [
    freetype
    fontconfig
    xorg.libX11
    xorg.libXrandr
    xorg.libXinerama
    xorg.libXext
    xorg.libXcursor
  ];

  installPhase = ''
    mkdir -p $out/lib/{clap,vst3}
    cd /build/source/dist/Release/linux
    cp -r firefly_synth_1.clap $out/lib/clap
    cp -r firefly_synth_fx_1.clap $out/lib/clap
    cp -r firefly_synth_1.vst3 $out/lib/vst3
    cp -r firefly_synth_fx_1.vst3 $out/lib/vst3
  '';

  meta = with pkgs.lib; {
    description = "Semi-modular synthesizer and FX plugin for Windows, Linux and Mac, VST3 and CLAP";
    homepage = "https://firefly-synth.com/";
    license = licenses.glp3Only;
    platforms = platforms.linux;
  };
}
