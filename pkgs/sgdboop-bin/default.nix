{
  sources,

  stdenv,
  lib,

  autoPatchelfHook,
  curl,
  gtk3,
}:
stdenv.mkDerivation {
  inherit (sources.sgdboop-bin) pname src;
  version = lib.removePrefix "v" sources.sgdboop-bin.version;
  sourceRoot = ".";

  nativeBuildInputs = [
    autoPatchelfHook
  ];

  buildInputs = [
    curl
    gtk3
  ];

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/bin $out/share/applications
    cp SGDBoop $out/bin
    cp com.steamgriddb.SGDBoop.desktop $out/share/applications

    runHook postBuild
  '';

  meta = with lib; {
    description = "A program used for applying custom artwork to Steam, using SteamGridDB";
    homepage = "https://www.steamgriddb.com/boop";
    license = licenses.cc-by-nc-sa-40;
    platforms = [ "x86_64-linux" ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
