# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}:
{
  basiliskii-bin = {
    pname = "basiliskii-bin";
    version = "2025-05-11";
    src = fetchurl {
      url = "https://github.com/Korkman/macemu-appimage-builder/releases/download/2025-05-11/BasiliskII-x86_64.AppImage";
      sha256 = "sha256-6toxNYulwZ/ap/bJcgBSInAzSj7hD5a+NzNDEPQtSGM=";
    };
  };
}
