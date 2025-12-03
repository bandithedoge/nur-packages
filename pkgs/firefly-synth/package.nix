{
  sources,

  lib,
  stdenv,

  juceCmakeHook,
}:
stdenv.mkDerivation {
  inherit (sources.firefly-synth) pname src;
  version = lib.removePrefix "v" sources.firefly-synth.version;

  nativeBuildInputs = [
    juceCmakeHook
  ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/lib/{clap,vst3}
    cd /build/source/dist/Release/linux
    cp -r firefly_synth_1.clap $out/lib/clap
    cp -r firefly_synth_fx_1.clap $out/lib/clap
    cp -r firefly_synth_1.vst3 $out/lib/vst3
    cp -r firefly_synth_fx_1.vst3 $out/lib/vst3

    runHook postInstall
  '';

  meta = with lib; {
    description = "Semi-modular synthesizer and FX plugin for Windows, Linux and Mac, VST3 and CLAP";
    homepage = "https://firefly-synth.com/";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
