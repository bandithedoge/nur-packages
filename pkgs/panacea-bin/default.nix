{
  pkgs,
  sources,
  utils,
  ...
}: let
  csound = pkgs.csound.overrideAttrs (_: {
    NIX_CFLAGS_COMPILE = ["-Wno-incompatible-pointer-types"];
  });
in
  pkgs.stdenv.mkDerivation {
    inherit (sources.panacea-bin) pname src;
    version = pkgs.lib.removePrefix "v" sources.panacea-bin.version;

    nativeBuildInputs = with pkgs; [
      autoPatchelfHook
    ];

    buildInputs = with pkgs;
      [
        csound
        stdenv.cc.cc.lib
      ]
      ++ utils.juce.commonBuildInputs;

    buildPhase = ''
      runHook preBuild

      mkdir -p $out/lib/vst/Panacea

      cp Panacea.so Panacea.csd $out/lib/vst/Panacea
      cp -r img $out/lib/vst/Panacea

      runHook postBuild
    '';

    meta = with pkgs.lib; {
      description = "Panacea is an autopan audio effect plugin with the possibility of humanization";
      homepage = "https://github.com/consint/Panacea";
      license = licenses.gpl3;
      platforms = ["x86_64-linux"];
      sourceProvenance = [sourceTypes.binaryNativeCode];
    };
  }
