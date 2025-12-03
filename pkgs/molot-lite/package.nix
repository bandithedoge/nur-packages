{
  sources,

  lib,
  stdenv,

  cairo,
  lv2,
  pkg-config,
}:
stdenv.mkDerivation {
  inherit (sources.molot-lite) pname version src;

  nativeBuildInputs = [
    pkg-config
  ];

  buildInputs = [
    lv2
    cairo
  ];

  postPatch = ''
    substituteInPlace Molot_Mono_Lite/Makefile Molot_Stereo_Lite/Makefile \
      --replace-fail "/usr/local" "$out"
  '';

  installPhase = ''
    runHook preInstall

    make install -C Molot_Mono_Lite
    make install -C Molot_Stereo_Lite

    runHook postInstall
  '';

  enableParallelBuilding = true;

  meta = with lib; {
    description = "A cut-down version of Molot, a compressor with a lot of color and character";
    homepage = "https://github.com/magnetophon/molot-lite";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
