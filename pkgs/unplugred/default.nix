{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage {
  inherit (sources.unplugred) pname src;
  version = sources.unplugred.date;

  preInstall = ''
    cp -r plugins/*/*_artefacts .
    ls
  '';

  cmakeFlags = [
    "-DFETCHCONTENT_SOURCE_DIR_JUCE=${sources.juce.src}"
    "-DFETCHCONTENT_SOURCE_DIR_CLAP-JUCE-EXTENSIONS=${sources.clap-juce-extensions.src}"
  ];

  meta = with pkgs.lib; {
    description = "Collection of VST plugins made by unplugred";
    homepage = "https://vst.unplug.red";
    license = licenses.gpl3; # https://github.com/unplugred/vsts/issues/6
    platforms = platforms.linux;
  };
}
