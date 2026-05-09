{
  sources,

  lib,
  nushell,
  rustPlatform,
}:
rustPlatform.buildRustPackage {
  inherit (sources.nu-plugin-regex) pname src;
  version = lib.removePrefix "v" sources.nu-plugin-regex.version;

  cargoLock = sources.nu-plugin-regex.cargoLock."Cargo.lock";

  meta = with lib; {
    description = "Nushell plugin to search text with regular expressions";
    homepage = "https://github.com/fdncred/nu_plugin_regex";
    license = licenses.mit;
    inherit (nushell.meta) platforms;
  };
}
