{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage {
  inherit (sources.monique) pname src;
  version = sources.monique.date;

  nativeBuildInputs = with pkgs; [
    git
  ];

  buildInputs = with pkgs; [
    libjack2
  ];

  meta = with pkgs.lib; {
    description = "Monique monosynth";
    homepage = "https://github.com/surge-synthesizer/monique-monosynth";
    license = with licenses; [
      gpl3Only
      mit
    ];
    platforms = platforms.linux;
  };
}
