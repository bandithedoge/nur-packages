{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.cantata) pname src;
  version = sources.cantata.date;

  nativeBuildInputs = with pkgs; [
    cmake
    ninja
    pkg-config
    qt6.qttools
    qt6.wrapQtAppsHook
  ];

  buildInputs = with pkgs; [
    avahi
    cdparanoia
    ffmpeg
    libcdio
    libcdio-paranoia
    libmtp
    libmusicbrainz5
    mpg123
    qt6.qtbase
    qt6.qtmultimedia
    qt6.qtsvg
    speex
    taglib
    taglib_extras
    udisks2
  ];

  meta = with pkgs.lib; {
    description = "Qt Graphical MPD Client (nullobsi fork)";
    homepage = "https://github.com/nullobsi/cantata";
    license = licenses.gpl3;
    platforms = platforms.unix;
  };
}
