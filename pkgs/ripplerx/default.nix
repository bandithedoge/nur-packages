{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage {
  inherit (sources.ripplerx) pname src;
  version = pkgs.lib.removePrefix "v" sources.ripplerx.version;

  meta = with pkgs.lib; {
    description = "A physically modeled synth";
    homepage = "https://github.com/tiagolr/ripplerx";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
