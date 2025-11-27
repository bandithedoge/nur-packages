{
  sources,
  utils,

  lib,

  git,
  libjack2,
}:
utils.juce.mkJucePackage {
  inherit (sources.monique) pname src;
  version = sources.monique.date;

  nativeBuildInputs = [
    git
  ];

  buildInputs = [
    libjack2
  ];

  meta = with lib; {
    description = "Monique monosynth";
    homepage = "https://github.com/surge-synthesizer/monique-monosynth";
    license = with licenses; [
      gpl3Plus
      mit
    ];
    platforms = platforms.linux;
    broken = true; # hash shenanigans
  };
}
