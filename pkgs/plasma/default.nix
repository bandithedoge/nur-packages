{
  sources,

  lib,
  stdenv,

  projucer,
}:
stdenv.mkDerivation {
  inherit (sources.plasma) pname src;
  version = lib.removePrefix "v" sources.plasma.version;

  nativeBuildInputs = [
    projucer
  ];

  jucerFile = "Plasma.jucer";

  meta = with lib; {
    description = "Asymmetrical Distortion Audio Plugin";
    homepage = "https://github.com/Dimethoxy/Plasma";
    license = licenses.agpl3Plus;
    platforms = platforms.linux;
  };
}
