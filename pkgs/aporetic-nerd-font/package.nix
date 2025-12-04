{
  sources,

  stdenvNoCC,
}:
stdenvNoCC.mkDerivation {
  inherit (sources.aporetic-nerd-font) pname src;
  version = sources.aporetic-nerd-font.date;

  buildPhase = ''
    mkdir -p $out/share/fonts/truetype/NerdFonts/Aporetic
    cp *.ttf $out/share/fonts/truetype/NerdFonts/Aporetic
  '';
}
