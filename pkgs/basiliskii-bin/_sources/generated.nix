# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  basiliskii-bin = {
    pname = "basiliskii-bin";
    version = "2024-07-11";
    src = fetchurl {
      url = "https://github.com/Korkman/macemu-appimage-builder/releases/download/2024-07-11/BasiliskII-x86_64.AppImage";
      sha256 = "sha256-UnFoRa+axZ4wiokcUda4TWvSM1tB6OYGODHPy2IZzaI=";
    };
  };
}
