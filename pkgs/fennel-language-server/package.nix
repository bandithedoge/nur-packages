{
  sources,

  lib,
  rustPlatform,
}:
rustPlatform.buildRustPackage {
  inherit (sources.fennel-language-server) pname src;
  version = sources.fennel-language-server.date;
  cargoLock = sources.fennel-language-server.cargoLock."Cargo.lock";

  meta = with lib; {
    description = "Fennel language server protocol (LSP) support.";
    homepage = "https://github.com/rydesun/fennel-language-server";
    license = licenses.mit;
  };
}
