# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  carla-git = {
    pname = "carla-git";
    version = "1e3b910d014f7f7d44e8b3b76eb47efad2121e4f";
    src = fetchFromGitHub {
      owner = "falkTX";
      repo = "Carla";
      rev = "1e3b910d014f7f7d44e8b3b76eb47efad2121e4f";
      fetchSubmodules = false;
      sha256 = "sha256-2ErjlweNxOSEO1q7FB40EHHLZn3z2GauW9DK9soQjvI=";
    };
    date = "2024-02-06";
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
    version = "40e27c0fe7c9128acf8ff733952cf51d2c09c928";
    src = fetchgit {
      url = "https://gitlab.gnome.org/GNOME/libadwaita";
      rev = "40e27c0fe7c9128acf8ff733952cf51d2c09c928";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-HsKyecJhHiGgFifce4EMFMr55kZuSKQR0IVO5OF3cw0=";
    };
    date = "2024-02-17";
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
    version = "bd173fe2bbc07c043e1c92c577a22a90e1460682";
    src = fetchgit {
      url = "https://gitlab.zrythm.org/zrythm/zrythm.git";
      rev = "bd173fe2bbc07c043e1c92c577a22a90e1460682";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-sD222XHKXyJ0zu8vnDTfu0ctpw6ywtCqPjk4vbi65ao=";
    };
    date = "2024-02-17";
  };
}
