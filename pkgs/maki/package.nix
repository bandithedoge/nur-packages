{
  fetchFromGitHub,
  lib,
  nix-update-script,
  rustPlatform,

  perl,
}:
rustPlatform.buildRustPackage (finalAttrs: {
  pname = "maki";
  version = "0.6.0";
  src = fetchFromGitHub {
    owner = "tontinton";
    repo = "maki";
    rev = "v${finalAttrs.version}";
    hash = "sha256-VdnGTPhRw8BMREIfSRCcddecZ8/9Ot8pF2mBADmnx0U=";
  };

  cargoHash = "sha256-GXHkaGcXJnC56QHBws70vj5FaBy3yVIHzPmCoZvSPdo=";

  nativeBuildInputs = [ perl ];

  passthru.updateScript = nix-update-script { };

  meta = {
    description = "Efficient AI coding agent extendable by neovim-like Lua plugins";
    homepage = "https://maki.sh";
    license = lib.licenses.mit;
    platforms = lib.platforms.unix;
    mainProgram = "maki";
    maintainers = [ lib.maintainers.bandithedoge ];
  };
})
