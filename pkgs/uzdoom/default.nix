{ pkgs, sources, ... }:
pkgs.stdenv.mkDerivation {
  inherit (sources.uzdoom) pname src;
  version = sources.uzdoom.date;

  nativeBuildInputs = with pkgs; [
    cmake
    ninja
    pkg-config
  ];

  buildInputs = with pkgs; [
    SDL2
    asmjit
    bzip2
    gtk3
    libvpx
    openal
    zmusic
  ];

  cmakeFlags = [
    "-DDYN_GTK=OFF"
    "-DDYN_OPENAL=OFF"
    "-DVULKAN_USE_WAYLAND=1"
  ];

  meta = with pkgs.lib; {
    description = "Feature centric port for all Doom engine games, based on GZDoom, adding an advanced renderer and powerful scripting capabilities";
    homepage = "https://github.com/UZDoom/UZDoom";
    license = licenses.gpl3Plus;
    platforms = platforms.unix;
  };
}
