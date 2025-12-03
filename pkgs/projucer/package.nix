{
  sources,

  lib,
  stdenv,

  gtk3,
  juceCmakeHook,
  ladspa-sdk,
  libjack2,
  pkg-config,
  webkitgtk_4_1,
  writableTmpDirAsHomeHook,
}:
stdenv.mkDerivation {
  pname = "projucer";
  inherit (sources.juce) version src;

  nativeBuildInputs = [
    juceCmakeHook
  ];

  buildInputs = [
    ladspa-sdk
  ];

  propagatedBuildInputs = juceCmakeHook.commonBuildInputs ++ [
    gtk3
    libjack2
    pkg-config
    webkitgtk_4_1
    writableTmpDirAsHomeHook
  ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/bin
    cp extras/Projucer/Projucer_artefacts/Release/Projucer $out/bin

    runHook postInstall
  '';

  cmakeFlags = [ "-DJUCE_BUILD_EXTRAS=ON" ];

  ninjaFlags = [ "Projucer" ];

  setupHook = ./setupHook.sh;

  meta = with lib; {
    homepage = "https://juce.com/";
    license = licenses.agpl3Only;
    platforms = platforms.unix;
  };
}
