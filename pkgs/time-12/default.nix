{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage {
  inherit (sources.time-12) pname src;
  version = pkgs.lib.removePrefix "v" sources.time-12.version;
}
