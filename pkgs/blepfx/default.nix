{
  pkgs,
  sources,
  ...
}: let
  mkBlep = {
    source,
    description,
    homepage,
  }:
    pkgs.stdenv.mkDerivation {
      inherit (source) pname version src;

      sourceRoot = ".";

      nativeBuildInputs = with pkgs; [
        unzip
        autoPatchelfHook
      ];

      buildInputs = with pkgs; [
        libGL
        xorg.libX11
        xorg.libxcb
      ];

      buildPhase = ''
        mkdir -p $out/lib/{clap,vst3}
        cp ${source.pname}-x86_64-unknown-linux-gnu.clap $out/lib/clap/${source.pname}.clap
        cp -r ${source.pname}-x86_64-unknown-linux-gnu.vst3 $out/lib/vst3/${source.pname}.vst3
      '';

      meta = with pkgs.lib; {
        inherit description homepage;
        license = licenses.unfree;
        platforms = ["x86_64-linux"];
        sourceProvenance = [sourceTypes.binaryNativeCode];
      };
    };
in {
  destruqtor = mkBlep {
    source = sources.destruqtor;
    description = "destruqtor is a companding distortion/saturation/exciter plugin. Unlike traditional distortion, destruqtor applies expanding compression before the waveshaper and an opposite compression after the effect, which preserves and emphasises transients and adds more warmth to your sounds without sacrificing dynamic range";
    homepage = "https://fx.amee.ee/plugin/destruqtor/";
  };
}
