# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  cinelerra-gg = {
    pname = "cinelerra-gg";
    version = "20240930";
    src = fetchurl {
      url = "https://cinelerra-gg.org/download/images/CinGG-20240930-x86_64.AppImage";
      sha256 = "sha256-ZVSx1zuVdBioH3weKDnLNeyGbd9fjj1W9VTcjJs8vqI=";
    };
  };
}
