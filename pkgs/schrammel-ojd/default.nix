{
  pkgs,
  sources,
  ...
}: let
  stdenv = pkgs.stdenvAdapters.useMoldLinker pkgs.stdenv;
in
  stdenv.mkDerivation {
    inherit (sources.schrammel-ojd) pname src;
    version = sources.schrammel-ojd.date;

    nativeBuildInputs = with pkgs; [
      cargo
      cmake
      pkg-config
      rustPlatform.cargoSetupHook
    ];

    buildInputs = with pkgs; [
      freetype
      xorg.libX11
      xorg.libXcursor
      xorg.libXext
      xorg.libXinerama
      xorg.libXrandr
    ];

    cmakeFlags = ["-DCOPY_PLUGIN_AFTER_BUILD=FALSE"];

    cargoRoot = "Ext/Resvg4JUCE/Ext/resvg";
    cargoDeps = pkgs.rustPlatform.importCargoLock sources.schrammel-ojd.cargoLock."Ext/Resvg4JUCE/Ext/resvg/Cargo.lock";

    installPhase = ''
      mkdir -p $out/lib/vst3
      cp -r OJD-VST3_artefacts/Release/VST3/OJD.vst3 $out/lib/vst3
    '';

    meta = with pkgs.lib; {
      description = "Audio plugin model of a modern classic guitar overdrive Pedal";
      homepage = "https://schrammel.io/";
      license = licenses.gpl3Only;
      platforms = platforms.linux;
    };
  }
