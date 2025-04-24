{
  pkgs,
  sources,
  utils,
  ...
}:
utils.juce.mkJucePackage {
  inherit (sources.resonarium) pname version src;

  nativeBuildInputs = with pkgs; [
    python3
  ];

  postPatch = ''
    cp ${pkgs.cpm-cmake}/share/cpm/CPM.cmake modules/melatonin_perfetto/cmake/CPM.cmake
    substituteInPlace CMakeLists.txt --replace-fail "JUCE_COPY_PLUGIN_AFTER_BUILD YES" "JUCE_COPY_PLUGIN_AFTER_BUILD NO"
  '';

  cmakeFlags = [
    "-DCPM_perfetto_SOURCE=${sources.perfetto.src}"
  ];

  meta = with pkgs.lib; {
    description = "An expressive, semi-modular, and comprehensive physical modeling/waveguide synthesizer";
    homepage = "https://github.com/gabrielsoule/resonarium";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
    broken = true; # build hangs when linking
  };
}
