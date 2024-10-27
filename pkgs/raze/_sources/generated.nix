# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  raze = {
    pname = "raze";
    version = "1.10.2";
    src = fetchFromGitHub {
      owner = "ZDoom";
      repo = "Raze";
      rev = "1.10.2";
      fetchSubmodules = false;
      sha256 = "sha256-8kr+BLwfTQ0kx6TMqu1AUxiCgvwJd2urZqJ09FH48lo=";
    };
  };
  zmusic = {
    pname = "zmusic";
    version = "3944bbc7568a6e945c7ae8c7f7e126731db62b83";
    src = fetchgit {
      url = "https://github.com/ZDoom/ZMusic";
      rev = "3944bbc7568a6e945c7ae8c7f7e126731db62b83";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-NR2QFovFQQQ32pOL6rhwstbeSav95PAYe83ki48qLfc=";
    };
    date = "2024-10-13";
  };
}
