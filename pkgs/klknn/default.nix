{
  pkgs,
  sources,
  ...
}:
let
  mkKlknn =
    source:
    pkgs.stdenv.mkDerivation {
      inherit (source) pname src;
      version = pkgs.lib.removePrefix "v" source.version;

      nativeBuildInputs = with pkgs; [
        autoPatchelfHook
        unzip
      ];

      buildInputs = with pkgs; [
        stdenv.cc.cc.lib
        xorg.libX11
      ];

      buildPhase = ''
        runHook preBuild

        mkdir -p $out/lib
        cp -r Linux-64b-LV2 $out/lib/lv2
        cp -r Linux-64b-VST3 $out/lib/vst3
        cp -r Linux-64b-VST2 $out/lib/vst

        runHook postBuild
      '';

      meta = with pkgs.lib; {
        homepage = "https://github.com/klknn/kdr";
        license = licenses.boost;
        platforms = [ "x86_64-linux" ];
        sourceProvenance = [ sourceTypes.binaryNativeCode ];
      };
    };
in
{
  envtool-bin = mkKlknn sources.envtool-bin;
  epiano2-bin = mkKlknn sources.epiano2-bin;
  freeverb-bin = mkKlknn sources.freeverb-bin;
  synth2-bin = mkKlknn sources.synth2-bin;
}
