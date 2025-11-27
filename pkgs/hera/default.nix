{
  sources,
  utils,

  lib,
}:
utils.juce.mkJucePackage {
  inherit (sources.hera) pname src;
  version = sources.hera.date;

  meta = with lib; {
    description = "Juno 60 emulation synthesizer";
    homepage = "https://github.com/jpcima/Hera";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
