# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  basiliskii-bin = {
    pname = "basiliskii-bin";
    version = "2024-01-11";
    src = fetchurl {
      url = "https://github.com/Korkman/macemu-appimage-builder/releases/download/2024-01-11/BasiliskII-x86_64.AppImage";
      sha256 = "sha256-73qnO5MyuRs738DYNtoux0IPlCBhr1lQ+5V3zSdB/tQ=";
    };
  };
}
