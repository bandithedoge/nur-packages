{
  sources,

  lib,
  stdenvNoCC,
}:
stdenvNoCC.mkDerivation {
  inherit (sources.aporetic-nerd-font) pname src;
  version = sources.aporetic-nerd-font.date;

  buildPhase = ''
    mkdir -p $out/share/fonts/truetype/NerdFonts/Aporetic
    cp *.ttf $out/share/fonts/truetype/NerdFonts/Aporetic
  '';

  meta = with lib; {
    description = "Nerd Font patch with glyphs of Protesilaos' Aporetic font";
    homepage = "https://github.com/Echinoidea/Aporetic-Nerd-Font";
    license = licenses.ofl;
    platforms = platforms.all;
    maintainers = [ maintainers.bandithedoge ];
  };
}
