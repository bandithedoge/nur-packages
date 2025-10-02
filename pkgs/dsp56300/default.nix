{
  pkgs,
  sources,
  utils,
  variants ? [
    "nodalred2x"
    "osirus"
    "ostirus"
    "vavra"
    "xenia"
  ],
  ...
}:
assert builtins.length variants != 0;
utils.juce.mkJucePackage {
  inherit (sources.dsp56300) pname version src;

  postPatch = ''
    substituteAll CMakeLists.txt --replace-fail "/usr/local" "${placeholder "out"}"
  '';

  installPhase = ''
    mkdir -p $out/{bin,lib}
  ''
  + pkgs.lib.optionalString (builtins.elem "osirus" variants || builtins.elem "ostirus" variants) ''
    cp source/virusTestConsole/virusTestConsole $out/bin
  ''
  + pkgs.lib.optionalString (builtins.elem "vavra" variants) ''
    cp source/mqTestConsole/mqTestConsole $out/bin
  ''
  + pkgs.lib.optionalString (builtins.elem "xenia" variants) ''
    cp source/xtTestConsole/xtTestConsole $out/bin
  ''
  + pkgs.lib.optionalString (builtins.elem "nodalred2x" variants) ''
    cp source/nord/n2x/n2xTestConsole/n2xTestConsole $out/bin
  ''
  + ''
    cd ../bin/plugins/Release
    cp -r CLAP $out/lib/clap
    cp -r VST3 $out/lib/vst3
    cp -r VST $out/lib/vst
  '';

  cmakeFlags =
    let
      enable = name: cond: "gearmulator_${pkgs.lib.toUpper name}=${if cond then "on" else "off"}";
    in
    map (v: enable "SYNTH_${v}" true) variants;

  dontUseJuceInstall = true;

  meta = with pkgs.lib; {
    description = "Emulation of classic VA synths of the late 90s/2000s that are based on Motorola 56300 family DSPs (${pkgs.lib.concatStringsSep ", " variants})";
    homepage = "https://dsp56300.wordpress.com/";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
