{
  sources,

  lib,
  stdenv,
  ninja,
  cmake,
  libsndfile,
  pkg-config,
  flex,
  bison,
  alsa-lib,
}:
stdenv.mkDerivation {
  inherit (sources.csound6) pname version src;

  nativeBuildInputs = [
    cmake
    ninja
    # pkg-config
    flex
    bison
  ];

  buildInputs = [
    libsndfile
    alsa-lib
  ];

  NIX_CFLAGS_COMPILE = [ "-Wno-template-body" ];

  # meta = with lib; {
  #   description = "";
  #   homepage = "";
  #   license = null;
  #   platforms = [];
  # };
}
