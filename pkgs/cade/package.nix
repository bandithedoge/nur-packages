{
  fetchFromGitHub,
  lib,
  nix-update-script,
  rustPlatform,

  pkg-config,
  sqlite,
}:
rustPlatform.buildRustPackage {
  pname = "cade";
  version = "0.1.3-unstable-2026-10-21";
  src = fetchFromGitHub {
    owner = "manic-systems";
    repo = "cade";
    rev = "429c5f5a64bc410333240c244614ce2847abc0c7";
    hash = "sha256-9TTpgk5rErE3jsT8/idoncoPylNl6+61f9WnI59O2WQ=";
  };

  cargoHash = "sha256-G5rWqEERqZDCIf2meYf0V+Wt2+tBaDUU1g68rTQywV4=";

  nativeBuildInputs = [ pkg-config ];

  buildInputs = [ sqlite ];

  passthru.updateScript = nix-update-script {
    extraArgs = [
      "--version"
      "branch"
    ];
  };

  meta = {
    description = "Intelligent, cascading environment manager";
    homepage = "https://github.com/manic-systems/cade";
    license = lib.licenses.eupl12;
    platforms = lib.platforms.unix;
    mainProgram = "cade";
    maintainers = [ lib.maintainers.bandithedoge ];
  };
}
