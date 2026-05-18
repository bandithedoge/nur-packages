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

  meta = with lib; {
    description = "Continuation of the last open source version of OB-Xd by 2DaT and later discoDSP, bringing together several efforts going on in the audio space and combining them inside the Surge Synth Team infrastructure";
    homepage = "https://github.com/surge-synthesizer/OB-Xf";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
    maintainers = [ maintainers.bandithedoge ];
  };
}
