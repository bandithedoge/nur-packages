{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage {
  inherit (sources.reev-r) pname src;
  version = pkgs.lib.removePrefix "v" sources.reev-r.version;

  meta = with pkgs.lib; {
    description = "Convolution reverb with pre and post modulation";
    homepage = "https://github.com/tiagolr/reevr";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
