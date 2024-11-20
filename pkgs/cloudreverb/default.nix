{
  pkgs,
  sources,
  ...
}: let
  stdenv = pkgs.stdenvAdapters.useMoldLinker pkgs.stdenv;
in
  stdenv.mkDerivation {
    inherit (sources.cloudreverb) pname src;
    version = sources.cloudreverb.date;

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
      mkdir -p $out/{bin,lib/lv2,lib/vst3}
      cd CloudReverb_artefacts/Release

      cp Standalone/CloudReverb $out/bin
      cp -r LV2/CloudReverb.lv2 $out/lib/lv2
      cp -r VST3/CloudReverb.vst3 $out/lib/vst3
    '';

    meta = with pkgs.lib; {
      description = "algorithmic reverb plugin based on CloudSeed";
      homepage = "https://github.com/xunil-cloud/CloudReverb";
      license = licenses.mit;
      platforms = platforms.linux;
    };
  }
