# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  sheepshaver-bin = {
    pname = "sheepshaver-bin";
    version = "2025-03-11";
    src = fetchurl {
      url = "https://github.com/Korkman/macemu-appimage-builder/releases/download/2025-03-11/SheepShaver-x86_64.AppImage";
      sha256 = "sha256-Te7bekGJRb4aL3eCguBVLRmR9tcodZfGB9KU1TsQOZg=";
    };
  };
}
