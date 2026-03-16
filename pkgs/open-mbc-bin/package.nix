{
  sources,

  lib,
  stdenv,

  alsa-lib,
  autoPatchelfHook,
  libGL,
  libx11,
  libxcb,
}:
stdenv.mkDerivation {
  inherit (sources.open-mbc-bin) pname src;
  version = lib.removePrefix "v" sources.open-mbc-bin.version;

  nativeBuildInputs = [
    autoPatchelfHook
  ];

  buildInputs = [
    alsa-lib
    libGL
    libx11
    libxcb
    stdenv.cc.cc.lib
  ];

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/{bin,lib/vst3}
    cp "Open Mbc" $out/bin/OpenMbc
    chmod +x $out/bin/OpenMbc
    cp -r "Open Mbc.vst3" $out/lib/vst3

    runHook postBuild
  '';

  meta = with lib; {
    description = "multiband compressor vst";
    homepage = "https://github.com/maor1993/open_mbc";
    license = licenses.gpl3Plus;
    platforms = [ "x86_64-linux" ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
