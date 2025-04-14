{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation rec {
  inherit (sources.nyan-doom) pname version src;
  sourceRoot = "${src.name}/prboom2";

  nativeBuildInputs = with pkgs; [
    cmake
    ninja
  ];

  buildInputs = with pkgs; [
    SDL2
    SDL2_image
    SDL2_mixer
    dumb
    fluidsynth
    libGLU
    libmad
    libvorbis
    libzip
    portmidi
    zlib
  ];

  meta = with pkgs.lib; {
    description = "The most cuddly Doom Source Port, with an emphasis on innovative and quality-of-life features";
    homepage = "https://github.com/andrikpowell/nyan-doom";
    license = licenses.gpl2Plus;
    platforms = platforms.unix;
  };
}
