# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  vitalium-verb-bin = {
    pname = "vitalium-verb-bin";
    version = "1.2.1";
    src = fetchurl {
      url = "https://github.com/BillyDM/vitalium-verb/releases/download/v1.2.1/vitaliumverb-1.2.1-ubuntu-20.04.zip";
      sha256 = "sha256-qSZSG/XYYa7BGZwzYRYuJFikuj44ky4hX8Do5GJHT+k=";
    };
  };
}
