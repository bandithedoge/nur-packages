{
  pkgs,
  sources,
  ...
}: let
  stdenv = pkgs.stdenvAdapters.useMoldLinker pkgs.stdenv;
in
  stdenv.mkDerivation {
    inherit (sources.hera) pname src;
    version = sources.hera.date;

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
      mkdir -p $out/lib/vst3
      cp -r Hera_artefacts/Release/VST3/Hera.vst3 $out/lib/vst3
    '';

    meta = with pkgs.lib; {
      description = "Juno 60 emulation synthesizer";
      homepage = "https://github.com/jpcima/Hera";
      license = licenses.gpl3Only;
      platforms = platforms.linux;
    };
  }
