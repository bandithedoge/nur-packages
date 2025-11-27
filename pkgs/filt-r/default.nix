{
  sources,
  utils,

  lib,
}:
utils.juce.mkJucePackage {
  inherit (sources.filt-r) pname src;
  version = lib.removePrefix "v" sources.filt-r.version;

  meta = with lib; {
    description = "Envelope based filter modulator";
    homepage = "https://github.com/tiagolr/filtr";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
