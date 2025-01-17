{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage {
  inherit (sources.valentine) pname version src;

  cmakeFlags = ["-DFETCHCONTENT_SOURCE_DIR_CATCH2=${sources.catch2.src}"];

  meta = with pkgs.lib; {
    description = "An open source compressor meant to pump and breathe";
    homepage = "https://github.com/tote-bag-labs/valentine";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
  };
}
