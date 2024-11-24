{
  pkgs,
  sources,
  ...
}: let
  stdenv = pkgs.stdenvAdapters.useMoldLinker pkgs.stdenv;
in
  stdenv.mkDerivation {
    inherit (sources.blocks) pname src;
    version = sources.blocks.date;

    nativeBuildInputs = with pkgs; [
      cmake
      pkg-config
    ];

    buildInputs = with pkgs; [
      xorg.libX11
      xorg.libXrandr
      xorg.libXinerama
      xorg.libXext
      xorg.libXcursor
      freetype
      alsa-lib
    ];

    installPhase = ''
      mkdir -p $out/{bin,lib/vst3}
      cd blocks_artefacts/Release
      cp -r VST3/blocks.vst3 $out/lib/vst3
      cp Standalone/blocks $out/bin
    '';

    meta = with pkgs.lib; {
      description = "User friendly cross platform modular synth";
      homepage = "https://www.soonth.com/";
      license = licenses.gpl3Only;
      platforms = platforms.linux;
    };
  }
