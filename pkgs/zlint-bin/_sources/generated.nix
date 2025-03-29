# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  zlint-bin-aarch64-darwin = {
    pname = "zlint-bin-aarch64-darwin";
    version = "v0.7.3";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.7.3/zlint-macos-aarch64";
      sha256 = "sha256-iefdA/3Sn/kf4I0n+za8Ad6vGrvx/d1D7erZmoGfyc8=";
    };
  };
  zlint-bin-aarch64-linux = {
    pname = "zlint-bin-aarch64-linux";
    version = "v0.7.3";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.7.3/zlint-linux-aarch64";
      sha256 = "sha256-G17LGObH3SWCT67bhpGghIdSSK6lUaK1Wxa4psst5Vw=";
    };
  };
  zlint-bin-x86_64-darwin = {
    pname = "zlint-bin-x86_64-darwin";
    version = "v0.7.3";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.7.3/zlint-macos-x86_64";
      sha256 = "sha256-8Z+9T7pRSe9F5oyg/UAlpIlv4HQRbUCSrxxP0tEYrnY=";
    };
  };
  zlint-bin-x86_64-linux = {
    pname = "zlint-bin-x86_64-linux";
    version = "v0.7.3";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.7.3/zlint-linux-x86_64";
      sha256 = "sha256-TsVC9PP2T18It2OPp6yLhOxa1OO4RpjX0B+UTEtZ0Cg=";
    };
  };
}
