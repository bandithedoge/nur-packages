# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  carla-git = {
    pname = "carla-git";
    version = "3c7d0e7b914d38a32b733cc5ced0b5696d2f9a03";
    src = fetchFromGitHub {
      owner = "falkTX";
      repo = "Carla";
      rev = "3c7d0e7b914d38a32b733cc5ced0b5696d2f9a03";
      fetchSubmodules = false;
      sha256 = "sha256-p1jdnOrRglLEGVVkMc7VQPEE23+AaUBEB0arncmwgW8=";
    };
    date = "2024-03-26";
  };
  gtk-4_14_0 = {
    pname = "gtk-4_14_0";
    version = "4.14.0";
    src = fetchFromGitHub {
      owner = "GNOME";
      repo = "gtk";
      rev = "4.14.0";
      fetchSubmodules = false;
      sha256 = "sha256-4iXmGCnRpCzOK/UMsxlVlLFpdM0xP7NwzlW92/vxjuY=";
    };
  };
  libadwaita-1_5 = {
    pname = "libadwaita-1_5";
    version = "1.5.0";
    src = fetchFromGitHub {
      owner = "GNOME";
      repo = "libadwaita";
      rev = "1.5.0";
      fetchSubmodules = false;
      sha256 = "sha256-uEaBI2jHlMdVprMGRZe/8HszO3nEBUJaJtvJjrMOjE4=";
    };
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
    version = "75992faa61380713c7fb71e475dfd53ec77c9939";
    src = fetchgit {
      url = "https://gitlab.zrythm.org/zrythm/zrythm.git";
      rev = "75992faa61380713c7fb71e475dfd53ec77c9939";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-zQ8meIHUOxVWRzKachYN8smgQux7yIc5VhzhPrQm8Bg=";
    };
    date = "2024-03-26";
  };
}
