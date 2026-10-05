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
  version = "0.1.0-unstable-2026-10-04";
  src = fetchFromGitHub {
    owner = "manic-systems";
    repo = "cade";
    rev = "f93eb1a1c62886d982b1295a0777ebe6bfee7d35";
    hash = "sha256-v9ciOki8H3Ty6AC3SvlDiMCTVWQrQ/aGRo7Mrk9E6fc=";
  };

  cargoHash = "sha256-Hpmge+YRDUhovt55NoBDd9GSV15cp184nDuMJZDnOX8=";

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
