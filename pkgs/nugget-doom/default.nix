{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.nugget-doom) pname src;
  version = pkgs.lib.removePrefix "nugget-doom-" sources.nugget-doom.version;

  nativeBuildInputs = with pkgs; [
    cmake
    ninja
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
