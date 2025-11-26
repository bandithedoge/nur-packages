{
  sources,
  utils,

  lib,
}:
utils.juce.mkJucePackage {
  inherit (sources.time-12) pname src;
  version = lib.removePrefix "v" sources.time-12.version;
}
