{
  sources,

  lib,
  stdenv,

  juceCmakeHook,
}:
stdenv.mkDerivation {
  inherit (sources.blocks) pname src;
  version = sources.blocks.date;

  nativeBuildInputs = [ juceCmakeHook ];

  meta = with lib; {
    description = "User friendly cross platform modular synth";
    homepage = "https://www.soonth.com/";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
