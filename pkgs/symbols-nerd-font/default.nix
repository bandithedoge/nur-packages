{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.symbols-nerd-font) version src;
  pname = "symbols-nerd-font";

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
