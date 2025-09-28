{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage {
  inherit (sources.ob-xf) pname src;
  version = sources.ob-xf.date;

  nativeBuildInputs = with pkgs; [
    git
  ];

  cmakeFlags = [
    "-DGIT_COMMIT_HASH=${sources.ob-xf.version}"
  ];

  SOURCE_DATE_EPOCH =
    pkgs.lib.toInt (pkgs.lib.elemAt (pkgs.lib.splitString "-" sources.ob-xf.date) 0)
    * 365
    * 24
    * 60
    * 60;

  NIX_CFLAGS_COMPILE = [ "-Wno-error" ];
}
