{
  sources,

  lib,
  rustPlatform,
  nushell,
}:
rustPlatform.buildRustPackage {
  inherit (sources.nu-plugin-mime) pname src;
  version = sources.nu-plugin-mime.date;

  cargoLock = sources.nu-plugin-mime.cargoLock."Cargo.lock";

  meta = with lib; {
    description = "Nushell plugin for working with mime types without performing disk access";
    homepage = "https://github.com/kik4444/nu_plugin_mime";
    license = licenses.mit;
    inherit (nushell.meta) platforms;
  };
}
