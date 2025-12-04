{
  sources,

  lib,
  stdenv,

  git,
  juceCmakeHook,
}:
stdenv.mkDerivation {
  inherit (sources.ob-xf) pname src;
  version = sources.ob-xf.date;

  nativeBuildInputs = [
    git
    juceCmakeHook
  ];

  cmakeFlags = [
    "-DGIT_COMMIT_HASH=${sources.ob-xf.version}"
  ];

  SOURCE_DATE_EPOCH =
    lib.toInt (lib.elemAt (lib.splitString "-" sources.ob-xf.date) 0) * 365 * 24 * 60 * 60;

  NIX_CFLAGS_COMPILE = [ "-Wno-error" ];
}
