# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  waterfox-bin = {
    pname = "waterfox-bin";
    version = "6.5.1";
    src = fetchurl {
      url = "https://cdn1.waterfox.net/waterfox/releases/6.5.1/Linux_x86_64/waterfox-6.5.1.tar.bz2";
      sha256 = "sha256-3zir+Jm2q88hQEUJa/VSDnQek4t36cUrEabyaKLHZQ0=";
    };
  };
}
