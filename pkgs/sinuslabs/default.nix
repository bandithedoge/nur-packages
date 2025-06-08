{
  pkgs,
  sources,
  utils,
  ...
}:
let
  mkSinuslabs =
    {
      source,
      meta,
      sourceRoot ? ".",
    }:
    pkgs.stdenv.mkDerivation {
      inherit (source) pname version src;
      inherit sourceRoot;

      nativeBuildInputs = with pkgs; [
        autoPatchelfHook
        unzip
      ];

      buildInputs = utils.juce.commonBuildInputs;

      buildPhase = ''
        runHook preBuild

        mkdir -p $out/lib/vst3
        cp -r *.vst3 $out/lib/vst3

        runHook postBuild
      '';

      meta = {
        platforms = [ "x86_64-linux" ];
        sourceProvenance = [ pkgs.lib.sourceTypes.binaryNativeCode ];
      } // meta;
    };
in
{
  bandbreite = mkSinuslabs {
    source = sources.bandbreite;
    sourceRoot = "Resources";
    meta = {
      description = "Add warm, analog character to your drums, basses, and 808s";
      homepage = "https://sinuslabs.io/products/bandbreite";
    };
  };

  ko = mkSinuslabs {
    source = sources.ko;
    sourceRoot = "KO-Installer";
    meta = {
      description = "KO is heavy hitting saturation and processing tool. Knockout power";
      homepage = "https://sinuslabs.io/products/ko";
    };
  };

  reach = mkSinuslabs {
    source = sources.reach;
    meta = {
      description = "Extraterrestrial Reverb with a unique Sound";
      homepage = "https://sinuslabs.io/products/reach";
      license = pkgs.lib.licenses.gpl3Plus;
    };
  };
}
