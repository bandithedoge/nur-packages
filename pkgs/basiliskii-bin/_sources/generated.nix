# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  basiliskii-bin = {
    pname = "basiliskii-bin";
    version = "2024-11-11";
    src = fetchurl {
      url = "https://github.com/Korkman/macemu-appimage-builder/releases/download/2024-11-11/BasiliskII-x86_64.AppImage";
      sha256 = "sha256-9OSgbo79rBLI+KFayCL/2JQ/Oqe77IesmHF2UvbqSE4=";
    };
  };
}
