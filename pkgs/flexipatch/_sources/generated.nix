# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}:
{
  dmenu-flexipatch = {
    pname = "dmenu-flexipatch";
    version = "e78fa197271a38ef7ebbdf13ef9764883a52756d";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dmenu-flexipatch";
      rev = "e78fa197271a38ef7ebbdf13ef9764883a52756d";
      fetchSubmodules = false;
      sha256 = "sha256-vV4SkxUcq8fzTZQrMtas720kA6thhJ1/kFM0/On1MQU=";
    };
    date = "2025-06-14";
  };
  dwm-flexipatch = {
    pname = "dwm-flexipatch";
    version = "5785a58873bc8f69ffc761b8d3dcdce6f2e00601";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "5785a58873bc8f69ffc761b8d3dcdce6f2e00601";
      fetchSubmodules = false;
      sha256 = "sha256-6foaf2pHK0T2UuKQSNH9ROHkTgOTjRdKIrddgM5Q27k=";
    };
    date = "2025-06-19";
  };
  slock-flexipatch = {
    pname = "slock-flexipatch";
    version = "72023758232e708018d3c7b0b324e61f55cb5c9b";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "slock-flexipatch";
      rev = "72023758232e708018d3c7b0b324e61f55cb5c9b";
      fetchSubmodules = false;
      sha256 = "sha256-/g0P36A+l7GeRrKFam6bT8o6MgpqjuvjnZC82IwEcdE=";
    };
    date = "2025-03-09";
  };
  st-flexipatch = {
    pname = "st-flexipatch";
    version = "43d9be991b63ab2fc36704263473eb2442ebf9c2";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "43d9be991b63ab2fc36704263473eb2442ebf9c2";
      fetchSubmodules = false;
      sha256 = "sha256-bNjKKnciG+nS7zXAhUQPwb+TnO/lM//C2XOzSLbU6ro=";
    };
    date = "2025-06-16";
  };
}
