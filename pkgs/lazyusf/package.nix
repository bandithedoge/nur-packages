{
  sources,

  lib,
  stdenv,

  cmake,
  flac,
  libao,
  libogg,
  ninja,
}:
stdenv.mkDerivation {
  inherit (sources.lazyusf) pname src;
  version = sources.lazyusf.date;

  nativeBuildInputs = [
    cmake
    ninja
  ];

  buildInputs = [
    flac
    libao
    libogg
  ];

  meta = with lib; {
    description = "Converter for Ultra 64 Sound Format";
    homepage = "https://github.com/derselbst/lazyusf";
    platforms = platforms.unix;
  };
}
