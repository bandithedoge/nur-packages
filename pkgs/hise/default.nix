{
  pkgs,
  sources,
  utils,
  callPackage',
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.hise) pname version src;

  nativeBuildInputs = with pkgs; [
    (callPackage' ../projucer)
    unzip
  ];

  jucerFile = "HISE Standalone.jucer";
  dontUseProjucerInstall = true;

  postPatch = ''
    unzip tools/SDK/sdk.zip -d tools/SDK
  '';

  preConfigure = ''
    cd projects/standalone
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p $out/bin
    cp "build/HISE Standalone" $out/bin/HISE

    runHook postInstall
  '';

  dontStrip = true;

  meta = with pkgs.lib; {
    description = "The open source toolkit for building virtual instruments and audio effects";
    homepage = "https://hise.dev";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
