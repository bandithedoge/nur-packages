# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  waterfox-bin = {
    pname = "waterfox-bin";
    version = "G6.0.20";
    src = fetchurl {
      url = "https://cdn1.waterfox.net/waterfox/releases/G6.0.20/Linux_x86_64/waterfox-G6.0.20.tar.bz2";
      sha256 = "sha256-cDXZzR7N0Tx3KKn5GGOK/V4yJCK1Pjw7S4nia2Nh40I=";
    };
  };
}
