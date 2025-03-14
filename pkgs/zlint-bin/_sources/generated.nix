# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  zlint-bin-aarch64-darwin = {
    pname = "zlint-bin-aarch64-darwin";
    version = "v0.6.4";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.6.4/zlint-macos-aarch64";
      sha256 = "sha256-hAPeTIjLIsWBiIZrrNUeBw4aDZckbG0TWtAtjc2AYow=";
    };
  };
  zlint-bin-aarch64-linux = {
    pname = "zlint-bin-aarch64-linux";
    version = "v0.6.4";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.6.4/zlint-linux-aarch64";
      sha256 = "sha256-UpEZTcSELFlMWKrjzFSNGkbbdd0i8k9R1WI95dE7cTg=";
    };
  };
  zlint-bin-x86_64-darwin = {
    pname = "zlint-bin-x86_64-darwin";
    version = "v0.6.4";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.6.4/zlint-macos-x86_64";
      sha256 = "sha256-yuZt63i20SSQ6HFxC7gDCbb/2+m/jgxYSOGUdOUef5I=";
    };
  };
  zlint-bin-x86_64-linux = {
    pname = "zlint-bin-x86_64-linux";
    version = "v0.6.4";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.6.4/zlint-linux-x86_64";
      sha256 = "sha256-MN+JfdiXtpTCHuiASdxVyrSAx3TFdifmeTAyeB2YU2s=";
    };
  };
}
