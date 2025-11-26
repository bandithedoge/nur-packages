{
  sources,
  utils,

  lib,

  git,
}:
utils.juce.mkJucePackage {
  inherit (sources.ob-xf) pname src;
  version = sources.ob-xf.date;

  nativeBuildInputs = [
    git
  ];

  cmakeFlags = [
    "-DGIT_COMMIT_HASH=${sources.ob-xf.version}"
  ];

  SOURCE_DATE_EPOCH =
    lib.toInt (lib.elemAt (lib.splitString "-" sources.ob-xf.date) 0) * 365 * 24 * 60 * 60;

  NIX_CFLAGS_COMPILE = [ "-Wno-error" ];
}
