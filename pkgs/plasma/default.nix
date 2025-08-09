{
  pkgs,
  sources,
  callPackage',
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.plasma) pname src;
  version = pkgs.lib.removePrefix "v" sources.plasma.version;

  nativeBuildInputs = [
    (callPackage' ../projucer)
  ];

  jucerFile = "Plasma.jucer";

  meta = with pkgs.lib; {
    description = "Asymmetrical Distortion Audio Plugin";
    homepage = "https://github.com/Dimethoxy/Plasma";
    license = licenses.agpl3Plus;
    platforms = platforms.linux;
  };
}
