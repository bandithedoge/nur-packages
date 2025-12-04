{
  sources,

  lib,
  stdenv,

  pkg-config,
}:
stdenv.mkDerivation {
  inherit (sources.oneknob-series) pname src;
  version = sources.oneknob-series.date;

  nativeBuildInputs = [
    pkg-config
  ];

  postPatch = ''
    patchShebangs .
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p $out/{bin,lib/clap,lib/lv2,lib/vst3,lib/vst,lib/ladspa}
    cp bin/*.clap $out/lib/clap
    cp -r bin/*.lv2 $out/lib/lv2
    cp -r bin/*.vst3 $out/lib/vst3
    cp bin/*-vst.so $out/lib/vst
    cp bin/*-ladspa.so $out/lib/ladspa

    runHook postInstall
  '';

  enableParallelBuilding = true;

  meta = with lib; {
    description = "Collection of stupidly simple but well-polished and visually pleasing audio plugins";
    homepage = "https://github.com/DISTRHO/OneKnob-Series";
    license = licenses.gpl2;
    platforms = platforms.linux;
  };
}
