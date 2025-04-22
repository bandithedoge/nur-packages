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
    mkdir -p $out/bin
    cp extras/Projucer/Projucer_artefacts/Release/Projucer $out/bin
  '';

  cmakeFlags = [
    "-DJUCE_BUILD_EXTRAS=ON"
  ];

  meta = with pkgs.lib; {
    homepage = "https://juce.com/";
    license = licenses.agpl3Only;
    platforms = platforms.unix;
  };
}
