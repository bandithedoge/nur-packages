{
  sources,

  lib,
  stdenv,

  autoPatchelfHook,
  csound,
  juceCmakeHook,
}:
let
  csound' = csound.overrideAttrs (_: {
    NIX_CFLAGS_COMPILE = [ "-Wno-incompatible-pointer-types" ];
  });
in
stdenv.mkDerivation {
  inherit (sources.panacea-bin) pname src;
  version = lib.removePrefix "v" sources.panacea-bin.version;

  nativeBuildInputs = [
    autoPatchelfHook
  ];

  buildInputs = [
    csound'
    stdenv.cc.cc.lib
  ]
  ++ juceCmakeHook.commonBuildInputs;

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/lib/vst/Panacea

    cp Panacea.so Panacea.csd $out/lib/vst/Panacea
    cp -r img $out/lib/vst/Panacea

    runHook postBuild
  '';

  meta = with lib; {
    description = "Panacea is an autopan audio effect plugin with the possibility of humanization";
    homepage = "https://github.com/consint/Panacea";
    license = licenses.gpl3Plus;
    platforms = [ "x86_64-linux" ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
