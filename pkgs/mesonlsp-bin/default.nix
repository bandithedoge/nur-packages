{
  pkgs,
  sources,
  ...
}:
# TODO: this can now be a native build
pkgs.stdenv.mkDerivation {
  inherit (sources.mesonlsp-bin) pname src;
  version = pkgs.lib.removePrefix "v" sources.mesonlsp-bin.version;

  nativeBuildInputs = with pkgs; [
    unzip
  ];

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/bin
    cp mesonlsp $out/bin

    runHook postBuild
  '';

  sourceRoot = ".";

  meta = with pkgs.lib; {
    description = "An unofficial, unendorsed language server for meson written in C++.";
    homepage = "https://github.com/JCWasmx86/mesonlsp";
    license = licenses.gpl3;
    platforms = ["x86_64-linux"];
    sourceProvenance = [sourceTypes.binaryNativeCode];
  };
}
