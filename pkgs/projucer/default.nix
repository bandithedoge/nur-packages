{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage {
  pname = "projucer";
  inherit (sources.juce) version src;

  buildInputs = with pkgs; [
    ladspa-sdk
  ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/bin
    cp extras/Projucer/Projucer_artefacts/Release/Projucer $out/bin

    runHook postInstall
  '';

  cmakeFlags = [ "-DJUCE_BUILD_EXTRAS=ON" ];

  ninjaFlags = [ "Projucer" ];

  meta = with pkgs.lib; {
    homepage = "https://juce.com/";
    license = licenses.agpl3Only;
    platforms = platforms.unix;
  };
}
