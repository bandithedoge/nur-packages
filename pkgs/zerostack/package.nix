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

  meta = with lib; {
    description = "Minimalistic coding agent written in Rust, optimized for memory footprint and performance";
    homepage = "https://github.com/gi-dellav/zerostack";
    license = licenses.gpl3Plus;
    platforms = platforms.unix;
    mainProgram = "zerostack";
    maintainers = [ maintainers.bandithedoge ];
  };
}
