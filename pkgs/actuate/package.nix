{
  sources,

  lib,
  rustPlatform,

  libGL,
  libx11,
  pkg-config,
}:
rustPlatform.buildRustPackage {
  inherit (sources.actuate) pname src;
  version = lib.removePrefix "v" sources.actuate.version;
  cargoLock = sources.actuate.cargoLock."Cargo.lock";

  nativeBuildInputs = [
    pkg-config
  ];

  buildInputs = [
    libGL
    libx11
  ];

  postBuild = ''
    cargo xtask bundle Actuate --profile release
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p $out/lib/{clap,vst3}
    cp target/bundled/Actuate.clap $out/lib/clap
    cp -r target/bundled/Actuate.vst3 $out/lib/vst3

    runHook postInstall
  '';

  doCheck = false;

  meta = with lib; {
    description = "Synthesizer, Sampler, Granulizer written in Rust with Nih-Plug and egui";
    homepage = "https://github.com/ardura/Actuate";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
    broken = true; # weird rust dependency hash things happening
  };
}
