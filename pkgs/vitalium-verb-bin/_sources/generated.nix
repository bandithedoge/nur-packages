# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  vitalium-verb-bin = {
    pname = "vitalium-verb-bin";
    version = "1.2.0";
    src = fetchurl {
      url = "https://github.com/BillyDM/vitalium-verb/releases/download/v1.2.0/vitaliumverb-1.2.0-ubuntu-20.04.zip";
      sha256 = "sha256-Us6jFq7oLbPjFw5Z8Vx9ijjK/QcdeIAyEIWH6ObhT40=";
    };
  };
}
