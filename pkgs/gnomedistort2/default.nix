{
  pkgs,
  sources,
  ...
}: let
  stdenv = pkgs.stdenvAdapters.useMoldLinker pkgs.stdenv;
in
  stdenv.mkDerivation {
    inherit (sources.gnomedistort2) pname version src;

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
      cp -r "GnomeDistort2_artefacts/Release/VST3/GnomeDistort 2.vst3" $out/lib/vst3
    '';

    meta = with pkgs.lib; {
      description = "Weird & brutal distortion VST plugin";
      homepage = "https://github.com/crowbait/GnomeDistort-2";
      license = licenses.gpl3Only;
      platforms = platforms.linux;
    };
  }
