{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  pname = "symbols-nerd-font";
  version = pkgs.lib.removePrefix "v" sources.symbols-nerd-font.version;
  inherit (sources.symbols-nerd-font) src;

  nativeBuildInputs = with pkgs; [unzip];

  sourceRoot = ".";

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/share/fonts/truetype/NerdFonts
    cp *.ttf $out/share/fonts/truetype/NerdFonts

    runHook postBuild
  '';

  meta = with pkgs.lib; {
    description = "Just the Nerd Font icons, i.e Symbol font only";
    homepage = "https://nerdfonts.com/";
    license = licenses.mit;
  };
}
