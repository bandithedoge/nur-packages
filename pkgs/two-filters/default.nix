{
  pkgs,
  sources,
  utils,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.two-filters) pname src;
  version = sources.two-filters.date;

  nativeBuildInputs = with pkgs; [
    cmake
    git
    ninja
    pkg-config
  ];

  buildInputs = utils.juce.commonBuildInputs;

  cmakeFlags = [
    "-DCOPY_AFTER_BUILD=FALSE"
    "-DGIT_COMMIT_HASH=${sources.two-filters.version}"
    "-DRTAUDIO_SDK_ROOT=${pkgs.rtaudio_6.src}"
    "-DRTMIDI_SDK_ROOT=${pkgs.rtmidi.src}"
    "-DVST3_SDK_ROOT=${sources.vst3sdk.src}"
  ];

  hardeningDisable = [ "format" ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/{bin,lib/clap,lib/vst3}
    cp "two-filters_assets/Two Filters" $out/bin/SixSines
    cp "two-filters_assets/Two Filters.clap" $out/lib/clap
    cp -r "two-filters_assets/Two Filters.vst3" $out/lib/vst3

    runHook postInstall
  '';

  SOURCE_DATE_EPOCH =
    pkgs.lib.toInt (pkgs.lib.elemAt (pkgs.lib.splitString "-" sources.two-filters.date) 0)
    * 365
    * 24
    * 60
    * 60;
}
