# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  zlint-bin-aarch64-darwin = {
    pname = "zlint-bin-aarch64-darwin";
    version = "v0.7.4";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.7.4/zlint-macos-aarch64";
      sha256 = "sha256-t2uneuftLAWopI8AN490JxbxdEd18P0F0teV/UBAlFo=";
    };
  };
  zlint-bin-aarch64-linux = {
    pname = "zlint-bin-aarch64-linux";
    version = "v0.7.4";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.7.4/zlint-linux-aarch64";
      sha256 = "sha256-REVqsie0OO8xp4Gzqqb63n1JyMHW1TcDCzs532aNy/Y=";
    };
  };
  zlint-bin-x86_64-darwin = {
    pname = "zlint-bin-x86_64-darwin";
    version = "v0.7.4";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.7.4/zlint-macos-x86_64";
      sha256 = "sha256-M2A9DGUQjytVQ3MONwBOeckKXDZl67t3m+p0vmU+h2A=";
    };
  };
  zlint-bin-x86_64-linux = {
    pname = "zlint-bin-x86_64-linux";
    version = "v0.7.4";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.7.4/zlint-linux-x86_64";
      sha256 = "sha256-tEaA+dN5R2PJpkB7JndpaNLOhfEwlRiMbhroKSszvok=";
    };
  };
}
