{ pkgs, sources, lib, ... }:
pkgs.stdenv.mkDerivation {
  inherit (sources.uzdoom) pname src;
  version = sources.uzdoom.date;

  nativeBuildInputs = with pkgs; [
    cmake
    makeWrapper
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

  postInstall = lib.optionalString pkgs.stdenv.hostPlatform.isLinux ''
    mv $out/bin/uzdoom $out/share/games/doom/uzdoom
    makeWrapper $out/share/games/doom/uzdoom $out/bin/uzdoom \
      --set LD_LIBRARY_PATH ${lib.makeLibraryPath [ pkgs.vulkan-loader ]}
  '';

  meta = with pkgs.lib; {
    description = "Feature centric port for all Doom engine games, based on GZDoom, adding an advanced renderer and powerful scripting capabilities";
    homepage = "https://github.com/UZDoom/UZDoom";
    license = licenses.gpl3Plus;
    platforms = platforms.unix;
  };
}
