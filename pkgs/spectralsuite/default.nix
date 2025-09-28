{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage {
  inherit (sources.spectralsuite) pname src;
  version = pkgs.lib.removePrefix "v" sources.spectralsuite.version;

  cmakeFlags = [ "-DCPM_JUCE_SOURCE=${pkgs.juce.src}" ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/lib/vst3
    cp -r */*_artefacts/Release/VST3/*.vst3 $out/lib/vst3

    runHook postInstall
  '';

  NIX_CFLAGS_COMPILE = [ "-Wno-error" ];
}
