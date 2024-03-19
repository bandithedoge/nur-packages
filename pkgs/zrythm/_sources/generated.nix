# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  carla-git = {
    pname = "carla-git";
    version = "66afe24a08790732cc17d81d4b846a1e0cfa0118";
    src = fetchFromGitHub {
      owner = "falkTX";
      repo = "Carla";
      rev = "66afe24a08790732cc17d81d4b846a1e0cfa0118";
      fetchSubmodules = false;
      sha256 = "sha256-m4Htw/c+xGgJEvBKgxrfwnSNFbJ8osA0+loQ6uGJx5Y=";
    };
    date = "2024-03-07";
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
    version = "4937ee8abe4f7ab2a12907c2fa2f0935a0a68f2d";
    src = fetchgit {
      url = "https://gitlab.zrythm.org/zrythm/zrythm.git";
      rev = "4937ee8abe4f7ab2a12907c2fa2f0935a0a68f2d";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-GWxXfyRwXmOYwYfn+VG4+pzOd5PcR+QtPqiYKEImGZQ=";
    };
    date = "2024-03-19";
  };
}
