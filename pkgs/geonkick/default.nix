{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.geonkick) pname src;
  version = pkgs.lib.removePrefix "v" sources.geonkick.version;

  nativeBuildInputs = with pkgs; [
    cmake
    ninja
    pkg-config
  ];

  buildInputs = with pkgs; [
    cairo
    libjack2
    libsndfile
    lv2
    openssl
    rapidjson
  ];

  cmakeFlags = [
    "-DCMAKE_INSTALL_LIBDIR=lib"
  ];

  meta = with pkgs.lib; {
    description = "A free software percussive synthesizer";
    homepage = "https://geonkick.org/index.html";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
