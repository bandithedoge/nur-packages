# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  sheepshaver-bin = {
    pname = "sheepshaver-bin";
    version = "2024-12-11";
    src = fetchurl {
      url = "https://github.com/Korkman/macemu-appimage-builder/releases/download/2024-12-11/SheepShaver-x86_64.AppImage";
      sha256 = "sha256-ifaoE1ePoTQ87T2Riw6bcSEQkWHHzasjEPVeR8Dnzu8=";
    };
  };
}
