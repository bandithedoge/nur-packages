{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage {
  inherit (sources.gate-12) pname src;
  version = pkgs.lib.removePrefix "#" sources.gate-12.version;

  meta = with pkgs.lib; {
    description = "GATE-12 is a cross-platform envelope generator for gate/volume control inspired by plugins like GrossBeat and ShaperBox. It is the second version of GATE-1 rebuilt from scratch using the JUCE framework";
    homepage = "https://github.com/tiagolr/gate12";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
  };
}
