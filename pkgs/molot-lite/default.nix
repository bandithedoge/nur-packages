{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.molot-lite) pname version src;

  nativeBuildInputs = with pkgs; [
    pkg-config
  ];

  buildInputs = with pkgs; [
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

  meta = with pkgs.lib; {
    description = "A cut-down version of Molot, a compressor with a lot of color and character";
    homepage = "https://github.com/magnetophon/molot-lite";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
  };
}
