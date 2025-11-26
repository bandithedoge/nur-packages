{
  sources,
  utils,

  lib,
  stdenv,

  cmake,
  git,
  ninja,
  pkg-config,
  rtaudio_6,
  rtmidi,
}:
stdenv.mkDerivation {
  inherit (sources.six-sines) pname src;
  version = lib.removePrefix "v" sources.six-sines.version;

  nativeBuildInputs = [
    cmake
    ninja
    pkg-config
    git
  ];

  buildInputs = utils.juce.commonBuildInputs;

  cmakeFlags = [
    "-DVST3_SDK_ROOT=${sources.vst3sdk.src}"
    "-DRTAUDIO_SDK_ROOT=${rtaudio_6.src}"
    "-DRTMIDI_SDK_ROOT=${rtmidi.src}"
    "-DGIT_COMMIT_HASH=${sources.six-sines.version}"
    "-DCOPY_AFTER_BUILD=FALSE"
    "-DCMAKE_POLICY_VERSION_MINIMUM=3.5"
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

  meta = with lib; {
    description = "Small synthesizer which explores audio rate inter-modulation of signals";
    homepage = "https://github.com/baconpaul/six-sines";
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
