{
  sources,

  lib,
  nushell,
  rustPlatform,
}:
rustPlatform.buildRustPackage {
  inherit (sources.nu-plugin-bexpand) pname src;
  version = sources.nu-plugin-bexpand.date;

  cargoLock = sources.nu-plugin-bexpand.cargoLock."Cargo.lock";

  meta = with lib; {
    description = "Bash style brace expansion for nushell";
    homepage = "https://forge.axfive.net/Taylor/nu-plugin-bexpand";
    license = licenses.mpl20;
    inherit (nushell.meta) platforms;
  };
}
