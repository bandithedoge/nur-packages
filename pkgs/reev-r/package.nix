{
  sources,

  lib,
  stdenv,

  juceCmakeHook,
}:
stdenv.mkDerivation {
  inherit (sources.reev-r) pname src;
  version = lib.removePrefix "v" sources.reev-r.version;

  nativeBuildInputs = [ juceCmakeHook ];

  meta = with lib; {
    description = "Convolution reverb with pre and post modulation";
    homepage = "https://github.com/tiagolr/reevr";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
