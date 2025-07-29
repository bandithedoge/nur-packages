{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage (finalAttrs: {
  pname = "projucer";
  inherit (sources.juce) version src;

  buildInputs = with pkgs; [
    ladspa-sdk
  ];

  propagatedBuildInputs =
    utils.juce.commonBuildInputs
    ++ (with pkgs; [
      gtk3
      libjack2
      pkg-config
      webkitgtk_4_0
      writableTmpDirAsHomeHook
    ]);

  installPhase = ''
    runHook preInstall

    mkdir -p $out/bin
    cp extras/Projucer/Projucer_artefacts/Release/Projucer $out/bin

    runHook postInstall
  '';

  cmakeFlags = [ "-DJUCE_BUILD_EXTRAS=ON" ];

  ninjaFlags = [ "Projucer" ];

  setupHook = ./setupHook.sh;

  meta = with pkgs.lib; {
    homepage = "https://juce.com/";
    license = licenses.agpl3Only;
    platforms = platforms.unix;
  };
})
