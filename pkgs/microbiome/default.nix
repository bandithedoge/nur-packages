{
  pkgs,
  sources,
  callPackage',
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.microbiome) pname src;
  version = pkgs.lib.removePrefix "v" sources.microbiome.version;

  nativeBuildInputs = [
    (callPackage' ../projucer)
  ];

  jucerFile = "Microbiome.jucer";

  meta = with pkgs.lib; {
    description = "A delay-based audio effects plugin";
    homepage = "https://github.com/dsmaugy/microbiome";
    license = licenses.gpl3Plus;
    platforms = [ "x86_64-linux" ];
  };
}
