{
  sources,

  lib,
  stdenv,
  installFonts,
}:
stdenv.mkDerivation {
  inherit (sources.barlow) pname src;
  version = sources.barlow.date;

  nativeBuildInputs = [ installFonts ];

  meta = with lib; {
    description = "Straight-sided sans-serif superfamily";
    homepage = "https://tribby.com/fonts/barlow";
    license = licenses.ofl;
    platforms = platforms.all;
  };
}
