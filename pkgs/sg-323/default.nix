{
  pkgs,
  sources,
  ...
}: let
  stdenv = pkgs.stdenvAdapters.useMoldLinker pkgs.stdenv;
in
  stdenv.mkDerivation {
    inherit (sources.sg-323) pname version src;

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

    postPatch = ''
      substituteInPlace CMakeLists.txt --replace-fail "COPY_PLUGIN_AFTER_BUILD TRUE" "COPY_PLUGIN_AFTER_BUILD FALSE"
    '';

    installPhase = ''
      mkdir -p $out/lib/{clap,vst3}
      cd SG323_artefacts/Release
      cp CLAP/SG-323.clap $out/lib/clap
      cp -r VST3/SG-323.vst3 $out/lib/vst3
    '';

    meta = with pkgs.lib; {
      description = "Ursa Major Stargate 323 reverb emulation";
      homepage = "https://github.com/greyboxaudio/SG-323";
      license = licenses.gpl3Only;
      platforms = platforms.linux;
    };
  }
