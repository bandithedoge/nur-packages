{
  pkgs,
  sources,
  utils,
  ...
}:
pkgs.stdenv.mkDerivation rec {
  inherit (sources.element) pname src;
  version = sources.element.date;

  nativeBuildInputs = with pkgs; [
    git
    makeWrapper
    meson
    ninja
    pkg-config
    python3
  ];

  buildInputs = with pkgs;
    [
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
    ln -s ${sources.juce-element.src} subprojects/juce
    ln -s ${sources.lvtk.src} subprojects/lvtk
  '';

  postInstall = ''
    wrapProgram $out/bin/element --prefix LD_LIBRARY_PATH : ${pkgs.lib.makeLibraryPath buildInputs}
  '';

  meta = with pkgs.lib; {
    description = "A modular AU/LV2/VST/VST3 audio plugin host";
    homepage = "https://kushview.net/element/";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
  };
}
