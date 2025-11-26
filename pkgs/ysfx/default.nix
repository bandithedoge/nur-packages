{
  sources,
  utils,

  lib,
}:
utils.juce.mkJucePackage {
  inherit (sources.ysfx) pname src;
  version = lib.removePrefix "v" sources.ysfx.version;

  cmakeFlags = [
    "-DFETCHCONTENT_SOURCE_DIR_JUCE=${sources.juce.src}"
    "-DYSFX_PLUGIN_COPY=FALSE"
    "-DYSFX_PLUGIN_LTO=ON"
  ];

  meta = with lib; {
    description = "Hosting library for JSFX";
    homepage = "https://github.com/JoepVanlier/ysfx";
    license = licenses.asl20;
    platforms = platforms.linux;
  };
}
