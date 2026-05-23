{
  withAcp ? true,

  sources,

  lib,
  rustPlatform,
}:
rustPlatform.buildRustPackage {
  inherit (sources.zerostack) pname src;
  version = lib.removePrefix "v" sources.zerostack.version;

  cargoLock = sources.zerostack.cargoLock."Cargo.lock";
  buildFeatures = lib.optional withAcp "acp";

  meta = {
    description = "Minimalistic coding agent written in Rust, optimized for memory footprint and performance";
    homepage = "https://github.com/gi-dellav/zerostack";
    license = lib.licenses.gpl3Plus;
    platforms = lib.platforms.unix;
    mainProgram = "zerostack";
    maintainers = [ lib.maintainers.bandithedoge ];
  };
}
