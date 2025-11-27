{
  sources,
  utils,

  rustPlatform,

  cargo,
  lib,
}:
utils.juce.mkJucePackage {
  inherit (sources.schrammel-ojd) pname src;
  version = sources.schrammel-ojd.date;

  nativeBuildInputs = [
    cargo
    rustPlatform.cargoSetupHook
  ];

  cargoRoot = "Ext/Resvg4JUCE/Ext/resvg";
  cargoDeps =
    rustPlatform.importCargoLock
      sources.schrammel-ojd.cargoLock."Ext/Resvg4JUCE/Ext/resvg/Cargo.lock";

  meta = with lib; {
    description = "Audio plugin model of a modern classic guitar overdrive Pedal";
    homepage = "https://schrammel.io/";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
