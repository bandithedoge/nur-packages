{
  sources,
  utils,

  lib,
}:
utils.juce.mkJucePackage {
  inherit (sources.terrain) pname version src;

  NIX_CFLAGS_COMPILE = [ "-Wno-error" ];

  meta = with lib; {
    description = "Open Source Wave Terrain Synth";
    homepage = "https://github.com/aaronaanderson/Terrain";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
