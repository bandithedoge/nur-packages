{
  pkgs,
  sources,
  utils,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.six-sines) pname src;
  version = pkgs.lib.removePrefix "v" sources.six-sines.version;

  nativeBuildInputs = with pkgs; [
    cmake
    ninja
    pkg-config
    git
  ];

  buildInputs = utils.juce.commonBuildInputs;

  cmakeFlags = [
    "-DVST3_SDK_ROOT=${sources.vst3sdk.src}"
    "-DRTAUDIO_SDK_ROOT=${pkgs.rtaudio_6.src}"
    "-DRTMIDI_SDK_ROOT=${pkgs.rtmidi.src}"
    "-DGIT_COMMIT_HASH=${sources.six-sines.version}"
    "-DCOPY_AFTER_BUILD=FALSE"
  ];

  hardeningDisable = [ "format" ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/{bin,lib/clap,lib/vst3}
    cp "six-sines_assets/Six Sines" $out/bin/SixSines
    cp "six-sines_assets/Six Sines.clap" $out/lib/clap
    cp -r "six-sines_assets/Six Sines.vst3" $out/lib/vst3

    runHook postInstall
  '';

  meta = with pkgs.lib; {
    description = "Small synthesizer which explores audio rate inter-modulation of signals";
    homepage = "https://github.com/baconpaul/six-sines";
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
