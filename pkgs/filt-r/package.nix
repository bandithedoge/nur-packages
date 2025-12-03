{
  sources,

  lib,
  stdenv,

  juceCmakeHook,
}:
stdenv.mkDerivation {
  inherit (sources.filt-r) pname src;
  version = lib.removePrefix "v" sources.filt-r.version;

  nativeBuildInputs = [ juceCmakeHook ];

  meta = with lib; {
    description = "Envelope based filter modulator";
    homepage = "https://github.com/tiagolr/filtr";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
