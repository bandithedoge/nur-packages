{
  sources,
  utils,

  lib,
}:
utils.juce.mkJucePackage {
  inherit (sources.cloudreverb) pname src;
  version = sources.cloudreverb.date;

  meta = with lib; {
    description = "algorithmic reverb plugin based on CloudSeed";
    homepage = "https://github.com/xunil-cloud/CloudReverb";
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
