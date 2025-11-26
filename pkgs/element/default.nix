{
  sources,
  utils,

  lib,
  stdenv,

  boost,
  cairo,
  cmake,
  git,
  ladspa-sdk,
  libjack2,
  lilv,
  lv2,
  lvtk,
  makeWrapper,
  meson,
  ninja,
  pkg-config,
  pugl,
  python3,
  suil,
  xorg,
}:
stdenv.mkDerivation rec {
  inherit (sources.element) pname src;
  version = sources.element.date;

  nativeBuildInputs = [
    cmake
    git
    makeWrapper
    meson
    ninja
    pkg-config
    python3
  ];

  buildInputs = [
    boost
    cairo
    ladspa-sdk
    libjack2
    lilv
    lv2
    lvtk
    pugl
    suil
    xorg.libXcomposite
  ]
  ++ utils.juce.commonBuildInputs;

  postPatch = ''
    ln -s ${sources.clap-helpers.src} subprojects/clap-helpers
    ln -s ${sources.clap.src} subprojects/clap
    ln -s ${sources.juce-element.src} subprojects/juce
    ln -s ${sources.lvtk-host.src} subprojects/lvtk-host
    ln -s ${sources.lvtk.src} subprojects/lvtk
  '';

  postInstall = ''
    wrapProgram $out/bin/element --prefix LD_LIBRARY_PATH : ${lib.makeLibraryPath buildInputs}
  '';

  dontUseCmakeConfigure = true;

  meta = with lib; {
    description = "A modular AU/LV2/VST/VST3 audio plugin host";
    homepage = "https://kushview.net/element/";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
  };
}
