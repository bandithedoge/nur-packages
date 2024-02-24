# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  carla-git = {
    pname = "carla-git";
    version = "0b250a0cb73e4967ca9db0e2065b430c0530c128";
    src = fetchFromGitHub {
      owner = "falkTX";
      repo = "Carla";
      rev = "0b250a0cb73e4967ca9db0e2065b430c0530c128";
      fetchSubmodules = false;
      sha256 = "sha256-pYOTWY7o8W0BklwnKcWRkdxe6/PBpzbRJ0WxO6VFOsw=";
    };
    date = "2024-02-23";
  };
  gtk-4_13_0 = {
    pname = "gtk-4_13_0";
    version = "4.13.0";
    src = fetchFromGitHub {
      owner = "GNOME";
      repo = "gtk";
      rev = "4.13.0";
      fetchSubmodules = false;
      sha256 = "sha256-SiL+/wfpeIUF2sQpGN1nWVn/mna+m3UxfORAFq/8fl0=";
    };
  };
  libadwaita-git = {
    pname = "libadwaita-git";
    version = "59a6e91aabff406cbb88fa635bf15ed47f8a7981";
    src = fetchgit {
      url = "https://gitlab.gnome.org/GNOME/libadwaita";
      rev = "59a6e91aabff406cbb88fa635bf15ed47f8a7981";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-vV17v+ADhYfdVBDJs5c6BjhmP7GE5Br+0Xn0QOC+L1o=";
    };
    date = "2024-02-23";
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
    version = "af4766d68d893864d5da7d0938698c76e5a5d5c0";
    src = fetchgit {
      url = "https://gitlab.zrythm.org/zrythm/zrythm.git";
      rev = "af4766d68d893864d5da7d0938698c76e5a5d5c0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-Uum/qgn+G+YED8HAFZHBWNGPjWZOYIeMbfziAH6D+DI=";
    };
    date = "2024-02-23";
  };
}
