# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  waterfox-bin = {
    pname = "waterfox-bin";
    version = "6.5.2";
    src = fetchurl {
      url = "https://cdn1.waterfox.net/waterfox/releases/6.5.2/Linux_x86_64/waterfox-6.5.2.tar.bz2";
      sha256 = "sha256-sCOocgZbM4Mc8mAfEz4UPJ8a2agemoALI5jVDP60DB8=";
    };
  };
}
