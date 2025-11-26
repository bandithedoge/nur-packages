{
  sources,
  utils,

  lib,
}:
utils.juce.mkJucePackage {
  inherit (sources.gnomedistort2) pname version src;

  meta = with lib; {
    description = "Weird & brutal distortion VST plugin";
    homepage = "https://github.com/crowbait/GnomeDistort-2";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
