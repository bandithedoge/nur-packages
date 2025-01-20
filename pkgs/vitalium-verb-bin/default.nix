{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.vitalium-verb-bin) pname version src;

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
    unzip
  ];

  buildInputs = with pkgs; [
    alsa-lib
    libGL
    stdenv.cc.cc.lib
    xorg.libX11
    xorg.libxcb
    xorg.xcbutilwm
  ];

  buildPhase = ''
    mkdir -p $out/lib/{clap,vst3}
    cp VitaliumVerb.clap $out/lib/clap
    cp -r VitaliumVerb.vst3 $out/lib/vst3
  '';

  meta = with pkgs.lib; {
    description = "A Rust port of the reverb module from the Vital/Vitalium synthesizer";
    homepage = "https://github.com/BillyDM/vitalium-verb";
    license = licenses.gpl3Only;
    platforms = ["x86_64-linux"];
    sourceProvenance = [sourceTypes.binaryNativeCode];
  };
}
