{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage {
  inherit (sources.hamburger) pname src;
  version = pkgs.lib.removePrefix "v" sources.hamburger.version;

  cmakeFlags = [
    "-DFETCHCONTENT_SOURCE_DIR_JUCE=${sources.juce.src}"
    "-DFETCHCONTENT_SOURCE_DIR_CLAP-JUCE-EXTENSIONS=${sources.clap-juce-extensions.src}"
  ];

  meta = with pkgs.lib; {
    description = "Distortion plugin with inbuilt dynamics controls and equalisation that can deliver both subtle tangy harmonics and absolute annilhilation and noise-wall-ification to any sound";
    homepage = "https://aviaryaudio.com/plugins/hamburgerv2";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
