{
  pkgs,
  sources,
  ...
}: let
  stdenv = pkgs.stdenvAdapters.useMoldLinker pkgs.stdenv;
  mkZl = {
    pname,
    prettyName,
    source,
    version ? source.version,
    meta,
    cflags ? [],
    lv2 ? true,
  }:
    stdenv.mkDerivation {
      inherit pname version;
      inherit (source) src;

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
        alsa-lib
      ];

      postPatch = ''
        substituteInPlace CMakeLists.txt --replace-fail "COPY_PLUGIN_AFTER_BUILD TRUE" "COPY_PLUGIN_AFTER_BUILD FALSE"
      '';

      installPhase =
        ''
          mkdir -p $out/lib/vst3
          cd ${pname}_artefacts/Release
          cp -r "VST3/${prettyName}.vst3" $out/lib/vst3
        ''
        + pkgs.lib.optionalString lv2 ''
          mkdir -p $out/lib/lv2
          cp -r "LV2/${prettyName}.lv2" $out/lib/lv2
        '';

      NIX_CFLAGS_COMPILE = cflags;

      meta = with pkgs.lib;
        {
          license = licenses.gpl3Only;
          platforms = platforms.linux;
        }
        // meta;
    };
in {
  equalizer = mkZl {
    pname = "ZLEqualizer";
    prettyName = "ZL Equalizer";
    source = sources.equalizer;
    meta = {
      description = "equalizer plugin";
      homepage = "https://zl-audio.github.io/plugins/zlequalizer/";
      license = pkgs.lib.licenses.agpl3Only;
    };
  };

  compressor = mkZl {
    pname = "ZLCompressor";
    prettyName = "ZL Compressor";
    source = sources.compressor;
    version = sources.compressor.date;
    meta = {
      description = "compressor plugin";
      homepage = "https://github.com/ZL-Audio/ZLCompressor";
    };
  };

  splitter = mkZl {
    pname = "ZLSplitter";
    prettyName = "ZL Splitter";
    source = sources.splitter;
    meta = {
      description = "splitter plugin";
      homepage = "https://zl-audio.github.io/plugins/zlsplitter/";
    };
    cflags = ["-Wno-changes-meaning"];
  };

  warm = mkZl {
    pname = "ZLWarm";
    prettyName = "ZL Warm";
    source = sources.warm;
    meta = {
      description = "distortion/saturation plugin";
      homepage = "https://github.com/ZL-Audio/ZLWarm";
    };
    lv2 = false;
  };

  lmakeup = mkZl {
    pname = "ZLLMakeup";
    prettyName = "ZL Loudness Makeup";
    source = sources.lmakeup;
    meta = {
      description = "loudness make-up plugin";
      homepage = "https://github.com/ZL-Audio/ZLLMakeup";
    };
    lv2 = false;
  };

  lmatch = mkZl {
    pname = "ZLLMatch";
    prettyName = "ZL Loudness Match";
    source = sources.lmatch;
    meta = {
      description = "loudness matching plugin";
      homepage = "https://github.com/ZL-Audio/ZLLMatch";
    };
    lv2 = false;
  };

  inflator = mkZl {
    pname = "ZLInflator";
    prettyName = "ZL Inflator";
    source = sources.inflator;
    meta = {
      description = "distortion/saturation plugin";
      homepage = "https://github.com/ZL-Audio/ZLInflator";
    };
    lv2 = false;
  };
}
