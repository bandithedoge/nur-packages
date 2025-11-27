{
  sources,

  lib,
  stdenv,

  cmake,
  gtkmm3,
  ninja,
  pkg-config,
}:
stdenv.mkDerivation {
  inherit (sources.winegui) pname src;
  version = lib.removePrefix "v" sources.winegui.version;

  nativeBuildInputs = [
    cmake
    ninja
    pkg-config
  ];

  buildInputs = [
    gtkmm3
  ];

  meta = with lib; {
    description = "A user-friendly WINE manager";
    homepage = "https://gitlab.melroy.org/melroy/winegui";
    license = licenses.agpl3Plus;
    platforms = platforms.linux;
  };
}
