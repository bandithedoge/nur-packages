{
  sources,

  lib,
  rustPlatform,
}:
rustPlatform.buildRustPackage {
  inherit (sources.nu-lint) pname src;
  version = sources.nu-lint.date;
  cargoLock = sources.nu-lint.cargoLock."Cargo.lock";

  meta = with lib; {
    description = "Linter for the Nu shell scripting language";
    homepage = "https://codeberg.org/wvhulle/nu-lint";
    license = licenses.mit;
    platforms = platforms.all;
  };
}
