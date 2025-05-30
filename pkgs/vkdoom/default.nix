{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.vkdoom) pname src;
  version = sources.vkdoom.date;

  nativeBuildInputs = with pkgs; [
    cmake
    git
    makeWrapper
    ninja
  ];

  buildInputs = with pkgs; [
    SDL2
    gtk3
    libvpx
    openal
    zmusic
  ];

  postInstall = ''
    for bin in vkdoom vktool; do
      mv $out/bin/$bin $out/share/games/doom/$bin
      makeWrapper $out/share/games/doom/$bin $out/bin/$bin \
        --set LD_LIBRARY_PATH ${with pkgs; lib.makeLibraryPath [ vulkan-loader ]}
    done
  '';

  cmakeFlags = [
    "-DDYN_GTK=OFF"
    "-DDYN_OPENAL=OFF"
  ];

  NIX_CFLAGS_COMPILE = [ "-Wno-error=format-security" ];

  meta = with pkgs.lib; {
    description = "ZDoom based source port with a primary focus on Vulkan and modern computers";
    homepage = "https://vkdoom.org/";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
