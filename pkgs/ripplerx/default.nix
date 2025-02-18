{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage {
  inherit (sources.ripplerx) pname version src;

  meta = with pkgs.lib; {
    description = "A physically modeled synth";
    homepage = "https://github.com/tiagolr/ripplerx";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
  };
}
