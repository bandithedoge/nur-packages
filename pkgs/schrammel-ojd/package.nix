{
  fetchFromGitHub,
  lib,
  nix-update-script,
  stdenv,

  cargo,
  juceCmakeHook,
  rustPlatform,
}:
stdenv.mkDerivation {
  pname = "schrammel-ojd";
  version = "0.9.8-unstable-2022-09-12";
  src = fetchFromGitHub {
    owner = "JanosGit";
    repo = "Schrammel_OJD";
    rev = "31de608759f3f03cadf8537f5330168977bae232";
    sha256 = "sha256-lhPV/BmluHdRgJu/f9+qDfgbbqewIUIaAaYUTNp/m7c=";
    fetchSubmodules = true;
  };

  nativeBuildInputs = [
    cargo
    juceCmakeHook
    rustPlatform.cargoSetupHook
  ];

  cargoRoot = "Ext/Resvg4JUCE/Ext/resvg";
  cargoHash = "sha256-asjkdhgfakjhsdgf=";

  passthru.updateScript = nix-update-script {
    extraArgs = [
      "--version"
      "branch=develop"
    ];
  };

  meta = {
    description = "Audio plugin model of a modern classic guitar overdrive Pedal";
    homepage = "https://schrammel.io/";
    license = lib.licenses.gpl3Plus;
    platforms = lib.platforms.linux;
    maintainers = [ lib.maintainers.bandithedoge ];
  };
}
