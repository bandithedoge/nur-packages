{
  sources,

  lib,
  stdenv,

  boost,
  cairo,
  juceCmakeHook,
  ladspa-sdk,
  libjack2,
  lilv,
  lv2,
  pugl,
  suil,
  xorg,

  enablePlugins ? true,
}:
stdenv.mkDerivation {
  inherit (sources.element) pname src;
  version = sources.element.date;

  nativeBuildInputs = [
    juceCmakeHook
  ];

  buildInputs = [
    boost
    cairo
    ladspa-sdk
    libjack2
    lilv
    lv2
    pugl
    suil
    xorg.libXcomposite
  ];

  cmakeFlags = [ (lib.cmakeBool "ELEMENT_ENABLE_PLUGINS" enablePlugins) ];

  installPhase = ''
    mkdir -p $out/bin
    cp element_app_artefacts/Release/Element $out/bin/element
  '';

  meta = with lib; {
    description = "A modular AU/LV2/VST/VST3 audio plugin host";
    homepage = "https://kushview.net/element/";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
  };
}
