# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  maim-bin = {
    pname = "maim-bin";
    version = "1.1.1";
    src = fetchurl {
      url = "https://github.com/ArdenButterfield/Maim/releases/download/v1.1.1/Maim-1.1.1-Linux.zip";
      sha256 = "sha256-3reoRXydMyApPatOq1D0yn8pRTmykdeMZvNdm/4TcV8=";
    };
  };
}
