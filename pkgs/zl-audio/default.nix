{
  pkgs,
  sources,
  utils,
  ...
}:
let
  mkZl =
    {
      pname,
      source,
      version ? source.version,
      meta,
      extraCmakeFlags ? [ ],
      cflags ? [ ],
    }:
    utils.juce.mkJucePackage {
      inherit pname version;
      inherit (source) src;

      cmakeFlags = [
        "-DZL_JUCE_COPY_PLUGIN=FALSE"
      ]
      ++ extraCmakeFlags;

      NIX_CFLAGS_COMPILE = cflags;

      meta =
        with pkgs.lib;
        {
          license = licenses.gpl3Plus;
          platforms = platforms.linux;
        }
        // meta;
    };
in
{
  equalizer = mkZl {
    pname = "ZLEqualizer";
    source = sources.equalizer;
    meta = {
      description = "equalizer plugin";
      homepage = "https://zl-audio.github.io/plugins/zlequalizer/";
      license = pkgs.lib.licenses.agpl3Only;
    };
    extraCmakeFlags = [ "-DKFR_ENABLE_DFT=ON" ];
  };

  compressor = mkZl {
    pname = "ZLCompressor";
    source = sources.compressor;
    version = sources.compressor.date;
    meta = {
      description = "compressor plugin";
      homepage = "https://github.com/ZL-Audio/ZLCompressor";
    };
    extraCmakeFlags = [ "-DKFR_ENABLE_DFT=ON" ];
  };

  splitter = mkZl {
    pname = "ZLSplitter";
    source = sources.splitter;
    meta = {
      description = "splitter plugin";
      homepage = "https://zl-audio.github.io/plugins/zlsplitter/";
    };
    cflags = [ "-Wno-changes-meaning" ];
  };

  warm = mkZl {
    pname = "ZLWarm";
    source = sources.warm;
    meta = {
      description = "distortion/saturation plugin";
      homepage = "https://github.com/ZL-Audio/ZLWarm";
    };
  };

  lmakeup = mkZl {
    pname = "ZLLMakeup";
    source = sources.lmakeup;
    version = pkgs.lib.removePrefix "v" sources.lmakeup.version;
    meta = {
      description = "loudness make-up plugin";
      homepage = "https://github.com/ZL-Audio/ZLLMakeup";
    };
  };

  lmatch = mkZl {
    pname = "ZLLMatch";
    source = sources.lmatch;
    version = pkgs.lib.removePrefix "v" sources.lmatch.version;
    meta = {
      description = "loudness matching plugin";
      homepage = "https://github.com/ZL-Audio/ZLLMatch";
    };
  };

  inflator = mkZl {
    pname = "ZLInflator";
    source = sources.inflator;
    meta = {
      description = "distortion/saturation plugin";
      homepage = "https://github.com/ZL-Audio/ZLInflator";
    };
  };
}
