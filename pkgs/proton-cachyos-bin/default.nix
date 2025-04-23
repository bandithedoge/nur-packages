{
  pkgs,
  sources,
  ...
}:
pkgs.stdenvNoCC.mkDerivation {
  inherit (sources.proton-cachyos-bin) pname version src;

  outputs = [
    "out"
    "steamcompattool"
  ];

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/share/steam/compatibilitytools.d/proton-cachyos
    cp -r * $out/share/steam/compatibilitytools.d/proton-cachyos
    ln -s $out/share/steam/compatibilitytools.d/proton-cachyos $steamcompattool

    runHook postBuild
  '';

  meta = with pkgs.lib; {
    description = "A compatibility tool for Steam Play based on Wine and additional components, experimental branch with extra CachyOS flavour";
    homepage = "https://github.com/CachyOS/proton-cachyos";
    license = licenses.bsd3;
    platforms = ["x86-64_linux"];
    sourceProvenance = [sourceTypes.binaryNativeCode];
  };
}
