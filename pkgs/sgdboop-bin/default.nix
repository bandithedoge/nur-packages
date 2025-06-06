{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.sgdboop-bin) pname src;
  version = pkgs.lib.removePrefix "v" sources.sgdboop-bin.version;
  sourceRoot = ".";

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
  ];

  buildInputs = with pkgs; [
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

  meta = with pkgs.lib; {
    description = "A program used for applying custom artwork to Steam, using SteamGridDB";
    homepage = "https://www.steamgriddb.com/boop";
    license = licenses.cc-by-nc-sa-40;
    platforms = [ "x86_64-linux" ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
