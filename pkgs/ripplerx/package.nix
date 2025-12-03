{
  sources,

  lib,
  stdenv,

  juceCmakeHook,
}:
stdenv.mkDerivation {
  inherit (sources.ripplerx) pname src;
  version = lib.removePrefix "v" sources.ripplerx.version;

  nativeBuildInputs = [ juceCmakeHook ];

  meta = with lib; {
    description = "A physically modeled synth";
    homepage = "https://github.com/tiagolr/ripplerx";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
