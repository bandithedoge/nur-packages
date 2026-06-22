{
  sources,

  lib,
  rustPlatform,

  pkg-config,
  openssl,
  wild,
  clangStdenv,
}:
rustPlatform.buildRustPackage.override { stdenv = clangStdenv; } {
  inherit (sources.tack) pname src;
  version = lib.removePrefix "v" sources.tack.version;
  cargoLock = sources.tack.cargoLock."Cargo.lock";

  nativeBuildInputs = [
    pkg-config
    wild
  ];

  buildInputs = [
    openssl
  ];

  env.RUSTFLAGS = "-Clinker=clang";

  meta = {
    description = "Flake-like toml nix pins, lazily fetched and transformed";
    homepage = "https://github.com/manic-systems/tack";
    license = lib.licenses.eupl12;
    platforms = lib.platforms.unix;
    mainProgram = "tack";
    maintainers = [ lib.maintainers.bandithedoge ];
  };
}
