{
  sources,

  lib,
  stdenv,

  autoPatchelfHook,
  csound,
  juceCmakeHook,
  unzip,
}:
let
  csound' = csound.overrideAttrs (_: {
    NIX_CFLAGS_COMPILE = [ "-Wno-incompatible-pointer-types" ];
  });
in
stdenv.mkDerivation {
  inherit (sources.tonez) pname version src;

  nativeBuildInputs = [
    autoPatchelfHook
    unzip
  ];

  buildInputs = [
    csound'
    stdenv.cc.cc.lib
  ]
  ++ juceCmakeHook.commonBuildInputs;

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/lib/vst3
    cp -r ToneZ_V2.vst3 $out/lib/vst3

    runHook postBuild
  '';

  meta = with lib; {
    description = "Free cross-platform polyphonic synthesizer";
    homepage = "https://www.retornz.com/plugins/tonez";
    license = licenses.gpl3Plus;
    platforms = [ "x86_64-linux" ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
