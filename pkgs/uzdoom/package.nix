{
  sources,

  lib,
  stdenv,

  SDL2,
  asmjit,
  bzip2,
  cmake,
  gtk3,
  libvpx,
  makeWrapper,
  ninja,
  openal,
  pkg-config,
  python3,
  vulkan-loader,
  zmusic,
}:
stdenv.mkDerivation {
  inherit (sources.uzdoom) pname src;
  version = sources.uzdoom.date;

  nativeBuildInputs = [
    cmake
    makeWrapper
    ninja
    pkg-config
    python3
  ];

  buildInputs = [
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

  postInstall = lib.optionalString stdenv.hostPlatform.isLinux ''
    mv $out/bin/uzdoom $out/share/games/uzdoom/uzdoom
    makeWrapper $out/share/games/uzdoom/uzdoom $out/bin/uzdoom \
      --set LD_LIBRARY_PATH ${lib.makeLibraryPath [ vulkan-loader ]}
  '';

  meta = with lib; {
    description = "Feature centric port for all Doom engine games, based on GZDoom, adding an advanced renderer and powerful scripting capabilities";
    homepage = "https://github.com/UZDoom/UZDoom";
    license = licenses.gpl3Plus;
    platforms = platforms.unix;
  };
}
