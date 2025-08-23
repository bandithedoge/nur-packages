{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage {
  inherit (sources.perceptomap) pname src;
  version = pkgs.lib.removePrefix "v" sources.perceptomap.version;

  cmakeFlags = [ "-DFETCHCONTENT_SOURCE_DIR_JUCE=${sources.juce.src}" ];

  meta = with pkgs.lib; {
    description = "From frequencies to feeling";
    homepage = "https://github.com/hqrrr/PerceptoMap";
    license = licenses.agpl3Plus;
    platforms = platforms.linux;
  };
}
