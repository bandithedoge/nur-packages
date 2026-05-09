{
  sources,

  lib,
  nushell,
  rustPlatform,
}:
rustPlatform.buildRustPackage {
  inherit (sources.nu-plugin-file) pname src;
  version = lib.removePrefix "v" sources.nu-plugin-file.version;

  cargoLock = sources.nu-plugin-file.cargoLock."Cargo.lock";

  meta = with lib; {
    description = "Nushell plugin that will inspect a file and return information based on it's magic number";
    homepage = "https://github.com/fdncred/nu_plugin_file";
    license = licenses.agpl3Plus;
    inherit (nushell.meta) platforms;
  };
}
