{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.reverse-camel) pname version src;

  nativeBuildInputs = with pkgs; [
    pkg-config
  ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/lib/{lv2,vst,ladspa,dssi}
    cp -r bin/reverse-camel.lv2 $out/lib/lv2
    cp bin/reverse-camel-vst.so $out/lib/vst
    cp bin/reverse-camel-ladspa.so $out/lib/ladspa
    cp bin/reverse-camel-dssi.so $out/lib/dssi

    runHook postInstall
  '';

  enableParallelBuilding = true;

  meta = with pkgs.lib; {
    description = "Cross-platform Camel Crusher Clone VST plug-in based on black-box analysis";
    homepage = "https://github.com/soerenbnoergaard/reverse-camel";
    platforms = platforms.linux;
  };
}
