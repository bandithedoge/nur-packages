{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.lamb-bin) pname version src;
  sourceRoot = ".";

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
    unzip
  ];

  buildInputs = with pkgs; [
    alsa-lib
    libGL
    stdenv.cc.cc.lib
    xorg.libX11
    xorg.libxcb
    xorg.xcbutilwm
  ];

  installPhase = ''
    mkdir -p $out/{bin,lib/clap,lib/vst3}
    cp lamb $out/bin
    cp lamb.clap $out/lib/clap
    cp -r lamb.vst3 $out/lib/vst3
  '';

  meta = with pkgs.lib; {
    description = "A lookahead compressor/limiter that's soft as a lamb";
    homepage = "https://github.com/magnetophon/lamb-rs";
    license = licenses.agpl3Only;
    platforms = platforms.linux;
  };
}
