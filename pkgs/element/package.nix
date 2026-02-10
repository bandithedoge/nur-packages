{
  sources,

  lib,
  clangStdenv,

  boost,
  cairo,
  juce,
  juceCmakeHook,
  ladspa-sdk,
  libjack2,
  libxcomposite,
  lilv,
  lv2,
  pugl,
  sol2,
  suil,

  enablePlugins ? true,
}:
clangStdenv.mkDerivation {
  inherit (sources.element) pname src;
  version = sources.element.date;

  nativeBuildInputs = [
    juceCmakeHook
  ];

  buildInputs = [
    boost
    cairo
    juce
    ladspa-sdk
    libjack2
    libxcomposite
    lilv
    lv2
    pugl
    sol2
    suil
  ];

  cmakeFlags = [ (lib.cmakeBool "ELEMENT_ENABLE_PLUGINS" enablePlugins) ];

  installPhase = ''
    mkdir -p $out/bin
    cp element_app_artefacts/Release/element $out/bin
  '';

  meta = with lib; {
    description = "A modular AU/LV2/VST/VST3 audio plugin host";
    homepage = "https://kushview.net/element/";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
  };
}
