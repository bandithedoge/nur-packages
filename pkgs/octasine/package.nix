{
  sources,

  lib,
  rustPlatform,

  libGL,
  pkg-config,
  python3,
  xorg,
}:
rustPlatform.buildRustPackage {
  inherit (sources.octasine) pname src;
  version = lib.removePrefix "v" sources.octasine.version;
  cargoLock = sources.octasine.cargoLock."Cargo.lock";

  nativeBuildInputs = [
    pkg-config
    python3
  ];

  buildInputs = [
    libGL
    xorg.libX11
    xorg.libXcursor
    xorg.libxcb
    xorg.xcbutilwm
  ];

  postBuild = ''
    cargo xtask bundle octasine --release --features "vst2"
    cargo xtask bundle octasine --release --features "clap"
  '';

  postInstall = ''
    mkdir -p $out/lib/vst $out/lib/clap
    cp target/bundled/octasine.so $out/lib/vst
    cp target/bundled/octasine.clap $out/lib/clap
  '';

  meta = with lib; {
    description = "Frequency modulation synthesizer plugin (VST2, CLAP).";
    homepage = "https://www.octasine.com/";
    license = licenses.agpl3Plus;
    platforms = platforms.linux;
  };
}
