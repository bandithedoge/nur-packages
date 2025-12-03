{
  sources,

  lib,
  stdenv,

  juceCmakeHook,
}:
stdenv.mkDerivation {
  inherit (sources.time-12) pname src;
  version = lib.removePrefix "v" sources.time-12.version;

  nativeBuildInputs = [ juceCmakeHook ];
}
