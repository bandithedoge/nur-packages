{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.cherry-doom) pname version src;

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
    openalSoft
    yyjson
  ];

  meta = with pkgs.lib; {
    description = "Fork of Nugget Doom with more additional features";
    homepage = "https://github.com/xemonix0/Cherry-Doom";
    license = licenses.gpl2Plus;
    platforms = platforms.unix;
  };
}
