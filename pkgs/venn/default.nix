{
  sources,

  lib,
  stdenv,

  autoPatchelfHook,
  curl,
  freetype,
  unzip,
}:
let
  mkVenn =
    {
      source,
      meta,
      sourceRoot ? null,
    }:
    stdenv.mkDerivation {
      inherit (source) pname version src;
      inherit sourceRoot;

      nativeBuildInputs = [
        autoPatchelfHook
        unzip
      ];

      buildInputs = [
        curl
        freetype
        stdenv.cc.cc.lib
      ];

      buildPhase = ''
        runHook preBuild

        mkdir -p $out/lib/vst3
        cp -r *.vst3 $out/lib/vst3

        runHook postBuild
      '';

      meta =
        with lib;
        {
          license = licenses.unfree;
          platforms = [ "x86_64-linux" ];
          sourceProvenance = [ sourceTypes.binaryNativeCode ];
        }
        // meta;
    };
in
{
  free-suite = mkVenn {
    source = sources.free-suite;
    sourceRoot = ".";
    meta = {
      homepage = "https://www.vennaudio.com/free-suite";
      description = "Performant, light weight, resizeable, zero fuss set of cross-platform audio plugins";
    };
  };

  viper = mkVenn {
    source = sources.viper;
    meta = {
      homepage = "https://www.vennaudio.com/product/Viper";
      description = "Simple plugin for overlaying visual cues onto your video to cue your actor or Foley artist";
    };
  };

  dimmer = mkVenn {
    source = sources.dimmer;
    meta = {
      homepage = "https://www.vennaudio.com/product/Dimmer/";
      description = "Utility plugin used to smoothly dim your monitoring setup in reaction to a sidechain signal, especially useful for studio engineers using a talkback mic and a monitoring speaker";
    };
  };
}
