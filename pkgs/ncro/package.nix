{
  clangStdenv,
  fetchFromGitHub,
  lib,
  nix-update-script,
  rustPlatform,
  wild,
}:
rustPlatform.buildRustPackage.override { stdenv = clangStdenv; } (finalAttrs: {
  pname = "ncro";
  version = "2.3.0";
  src = fetchFromGitHub {
    owner = "manic-systems";
    repo = "ncro";
    rev = "v${finalAttrs.version}";
    hash = "sha256-+jkCy826eI/CQjh8lfzYq4HbwKoCkoTqiB8FOeD7I0U=";
  };

  cargoHash = "sha256-/LdG4ho2tNThQaCMllszxc3kATo9z0OgG6gZMofUcn8=";

  nativeBuildInputs = [ wild ];

  doCheck = false;

  env.RUSTFLAGS = "-Clinker=clang";

  passthru.updateScript = nix-update-script { };

  meta = {
    description = "Lightweight HTTP proxy for optimizing Nix cache routes for fast access";
    homepage = "https://github.com/manic-systems/ncro";
    license = lib.licenses.eupl12;
    platforms = lib.platforms.unix;
    mainProgram = "ncro";
    maintainers = [ lib.maintainers.bandithedoge ];
  };
})
