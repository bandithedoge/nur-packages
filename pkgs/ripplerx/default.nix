{
  sources,
  utils,

  lib,
}:
utils.juce.mkJucePackage {
  inherit (sources.ripplerx) pname src;
  version = lib.removePrefix "v" sources.ripplerx.version;

  meta = with lib; {
    description = "A physically modeled synth";
    homepage = "https://github.com/tiagolr/ripplerx";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
