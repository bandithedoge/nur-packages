{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage {
  inherit (sources.filt-r) pname src;
  version = pkgs.lib.removePrefix "v" sources.filt-r.version;

  meta = with pkgs.lib; {
    description = "Envelope based filter modulator";
    homepage = "https://github.com/tiagolr/filtr";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
