{
  pkgs,
  sources,
  ...
}: let
  stdenv = pkgs.stdenvAdapters.useMoldLinker pkgs.stdenv;
in
  stdenv.mkDerivation {
    inherit (sources.ysfx) pname version src;

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
      fontconfig
      libGL
    ];

    cmakeFlags = [
      "-DFETCHCONTENT_SOURCE_DIR_JUCE=${sources.juce.src}"
      "-DYSFX_PLUGIN_COPY=FALSE"
      "-DYSFX_PLUGIN_LTO=ON"
    ];

    installPhase = ''
      mkdir -p $out/lib/{clap,vst3}
      cp "ysfx_plugin_artefacts/Release/CLAP/ysfx-s FX.clap" $out/lib/clap
      cp "ysfx_plugin_instrument_artefacts/Release/CLAP/ysfx-s instrument.clap" $out/lib/clap
      cp -r "ysfx_plugin_artefacts/Release/VST3/ysfx-s FX.vst3" $out/lib/vst3
      cp -r "ysfx_plugin_instrument_artefacts/Release/VST3/ysfx-s instrument.vst3" $out/lib/vst3
    '';

    meta = with pkgs.lib; {
      description = "Hosting library for JSFX";
      homepage = "https://github.com/JoepVanlier/ysfx";
      license = licenses.asl20;
      platforms = platforms.linux;
    };
  }
