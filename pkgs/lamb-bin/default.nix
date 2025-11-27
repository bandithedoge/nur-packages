{
  sources,

  lib,
  stdenv,

  alsa-lib,
  autoPatchelfHook,
  libGL,
  unzip,
  xorg,
}:
stdenv.mkDerivation {
  inherit (sources.lamb-bin) pname src;
  version = lib.removePrefix "v" sources.lamb-bin.version;
  sourceRoot = ".";

  nativeBuildInputs = [
    autoPatchelfHook
    unzip
  ];

  buildInputs = [
    alsa-lib
    libGL
    stdenv.cc.cc.lib
    xorg.libX11
    xorg.libxcb
    xorg.xcbutilwm
  ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/{bin,lib/clap,lib/vst3}
    cp lamb $out/bin
    cp lamb.clap $out/lib/clap
    cp -r lamb.vst3 $out/lib/vst3

    runHook postInstall
  '';

  meta = with lib; {
    description = "A lookahead compressor/limiter that's soft as a lamb";
    homepage = "https://github.com/magnetophon/lamb-rs";
    license = licenses.agpl3Plus;
    platforms = [ "x86_64-linux" ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
