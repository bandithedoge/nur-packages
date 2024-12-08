# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  chameleon = {
    pname = "chameleon";
    version = "bf0b03b4ebead33c84432e3beabe199ff0fa847e";
    src = fetchgit {
      url = "https://github.com/GuitarML/Chameleon";
      rev = "bf0b03b4ebead33c84432e3beabe199ff0fa847e";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-Y8oQ3ONHeQn0v7CXR6Jln5yb+CvVR4lXQlJeOm5jsuY=";
    };
    date = "2023-01-05";
  };
  prince = {
    pname = "prince";
    version = "v1.0";
    src = fetchFromGitHub {
      owner = "GuitarML";
      repo = "PrincePedal";
      rev = "v1.0";
      fetchSubmodules = true;
      sha256 = "sha256-mCDbfzSC8MnL1Lkeft5UznMo69Sty9VcJvn/yR76d3s=";
    };
  };
  proteus = {
    pname = "proteus";
    version = "v1.2";
    src = fetchFromGitHub {
      owner = "GuitarML";
      repo = "Proteus";
      rev = "v1.2";
      fetchSubmodules = true;
      sha256 = "sha256-WhJh+Sx64JYxQQ1LXpDUwXeodFU1EZ0TmMhn+6w0hQg=";
    };
  };
  smartamp = {
    pname = "smartamp";
    version = "883944d1b46d03e6e906602db2f15cf24ecb743b";
    src = fetchgit {
      url = "https://github.com/GuitarML/SmartGuitarAmp";
      rev = "883944d1b46d03e6e906602db2f15cf24ecb743b";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-1pS3gSpvncEJqvB96PKbxlfV/Besdvd5pKs7VVfG1pE=";
    };
    date = "2023-04-11";
  };
  smartpedal = {
    pname = "smartpedal";
    version = "fede0242a4d77fff609a49b9277151bfb63cd3cf";
    src = fetchgit {
      url = "https://github.com/GuitarML/SmartGuitarPedal";
      rev = "fede0242a4d77fff609a49b9277151bfb63cd3cf";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-ZqkHF07FHlTvViJCdd/t2ge9JwpTiG/PYt2gMFJzKD8=";
    };
    date = "2022-10-12";
  };
  ts-m1n3 = {
    pname = "ts-m1n3";
    version = "f1cf48c3188c76d7ebf0ead1d7979f7e72f12661";
    src = fetchgit {
      url = "https://github.com/GuitarML/TS-M1N3";
      rev = "f1cf48c3188c76d7ebf0ead1d7979f7e72f12661";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-ItxkbMtF2xOUb/mYL/K5s9S9GTrHlsCsAl/P0EDM3xs=";
    };
    date = "2023-01-05";
  };
}