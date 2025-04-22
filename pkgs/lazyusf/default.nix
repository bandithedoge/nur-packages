{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.lazyusf) pname src;
  version = sources.lazyusf.date;

  nativeBuildInputs = with pkgs; [
    cmake
    ninja
  ];

  buildInputs = with pkgs; [
    flac
    libao
    libogg
  ];

  meta = with pkgs.lib; {
    description = "Converter for Ultra 64 Sound Format";
    homepage = "https://github.com/derselbst/lazyusf";
    platforms = platforms.unix;
  };
}
