{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.nugget-doom) pname version src;

  nativeBuildInputs = with pkgs; [
    cmake
    python3
  ];

  buildInputs = with pkgs; [
    SDL2
    SDL2_net
    alsa-lib
    fluidsynth
    libebur128
    libsndfile
    libxmp
    openal
    yyjson
  ];

  meta = with pkgs.lib; {
    description = "Fork of Woof! with additional features";
    homepage = "https://github.com/MrAlaux/Nugget-Doom";
    license = licenses.gpl2Plus;
    platforms = platforms.unix;
  };
}
