{
  pkgs,
  sources,
  ...
}: let
  stdenv = pkgs.stdenvAdapters.useMoldLinker pkgs.stdenv;
in
  stdenv.mkDerivation {
    inherit (sources.roomreverb) pname version src;

    nativeBuildInputs = with pkgs; [
      cmake
      pkg-config
    ];

    buildInputs = with pkgs; [
      alsa-lib
      fontconfig
      freetype
      xorg.libX11
      xorg.libXcursor
      xorg.libXext
      xorg.libXinerama
      xorg.libXrandr
    ];

    postPatch = ''
      substituteInPlace CMakeLists.txt --replace-fail "COPY_PLUGIN_AFTER_BUILD TRUE" "COPY_PLUGIN_AFTER_BUILD FALSE"
    '';

    installPhase = ''
      mkdir -p $out/lib/{clap,lv2,vst3}
      cd RoomReverb_artefacts/Release
      cp CLAP/RoomReverb.clap $out/lib/clap
      cp -r LV2/RoomReverb.lv2 $out/lib/lv2
      cp -r VST3/RoomReverb.vst3 $out/lib/vst3
    '';

    meta = with pkgs.lib; {
      description = "Room Reverb is a mono/stereo to stereo algorithmic reverb audio plugin with many presets that lets you add reverberation to your recordings in your DAW";
      homepage = "https://github.com/cvde/RoomReverb";
      license = licenses.gpl3Only;
      platforms = platforms.linux;
    };
  }
