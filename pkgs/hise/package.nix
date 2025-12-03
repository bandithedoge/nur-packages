{
  sources,

  lib,
  stdenv,

  projucer,
  unzip,
}:
stdenv.mkDerivation {
  inherit (sources.hise) pname version src;

  nativeBuildInputs = [
    projucer
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

  meta = with lib; {
    description = "The open source toolkit for building virtual instruments and audio effects";
    homepage = "https://hise.dev";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
