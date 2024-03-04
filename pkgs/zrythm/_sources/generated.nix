# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  carla-git = {
    pname = "carla-git";
    version = "fe8631bc13a507507ccc6b5c408d5a4a880b1936";
    src = fetchFromGitHub {
      owner = "falkTX";
      repo = "Carla";
      rev = "fe8631bc13a507507ccc6b5c408d5a4a880b1936";
      fetchSubmodules = false;
      sha256 = "sha256-/v2TXK3BMe3Ort6voP3YV+t2CjkfsYy2SN3HOJUT2z0=";
    };
    date = "2024-03-01";
  };
  gtk-4_13_4 = {
    pname = "gtk-4_13_4";
    version = "4.13.4";
    src = fetchFromGitHub {
      owner = "GNOME";
      repo = "gtk";
      rev = "4.13.4";
      fetchSubmodules = false;
      sha256 = "sha256-rB+8PuBphly3dRiXYm3ik+aWRjJb64M5Ippp1Agchoc=";
    };
  };
  libadwaita-git = {
    pname = "libadwaita-git";
    version = "ff35bfc5761d6f9b1459c6a9e49622b2139787a9";
    src = fetchgit {
      url = "https://gitlab.gnome.org/GNOME/libadwaita";
      rev = "ff35bfc5761d6f9b1459c6a9e49622b2139787a9";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-44f2ZmQ2gbZ02lwC9FlY8772+KkCtYuYsbfjEhpenHc=";
    };
    date = "2024-03-03";
  };
  rtaudio-git = {
    pname = "rtaudio-git";
    version = "6.0.1";
    src = fetchFromGitHub {
      owner = "thestk";
      repo = "rtaudio";
      rev = "6.0.1";
      fetchSubmodules = false;
      sha256 = "sha256-Acsxbnl+V+Y4mKC1gD11n0m03E96HMK+oEY/YV7rlIY=";
    };
  };
  zrythm = {
    pname = "zrythm";
    version = "a14276d50acbe6e5243ed25f62c7f0828126e9a9";
    src = fetchgit {
      url = "https://gitlab.zrythm.org/zrythm/zrythm.git";
      rev = "a14276d50acbe6e5243ed25f62c7f0828126e9a9";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-UeQEHTgLqiziIxIRVy449+WAxlPoBfDZ/Av0L1rzqZs=";
    };
    date = "2024-03-03";
  };
}
