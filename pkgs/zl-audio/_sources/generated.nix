# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  compressor = {
    pname = "compressor";
    version = "86f25c2a8552bef7bf94b9d44947f5b14e6542fa";
    src = fetchgit {
      url = "https://github.com/ZL-Audio/ZLCompressor";
      rev = "86f25c2a8552bef7bf94b9d44947f5b14e6542fa";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-84oaPdmROkgl7w7dFamSKG5YhNqbOFAF3BfTBLNPVTg=";
    };
    date = "2025-02-04";
  };
  equalizer = {
    pname = "equalizer";
    version = "0.5.0";
    src = fetchFromGitHub {
      owner = "ZL-Audio";
      repo = "ZLEqualizer";
      rev = "0.5.0";
      fetchSubmodules = true;
      sha256 = "sha256-nG7ZREeA1Xmxm/gkhpe9Y/9wpmNWoEIZqk4rkvIg9/U=";
    };
  };
  inflator = {
    pname = "inflator";
    version = "0.3.0";
    src = fetchFromGitHub {
      owner = "ZL-Audio";
      repo = "ZLInflator";
      rev = "0.3.0";
      fetchSubmodules = true;
      sha256 = "sha256-HR2zZYEZvAIZCM05VAcDbCbyp16uma3v8+U66XgW/RY=";
    };
  };
  lmakeup = {
    pname = "lmakeup";
    version = "v0.2.7";
    src = fetchFromGitHub {
      owner = "ZL-Audio";
      repo = "ZLLMakeup";
      rev = "v0.2.7";
      fetchSubmodules = true;
      sha256 = "sha256-H6R5ZN005coDrf19nHpogAe+jY2/VA3B4w23gzYq+EM=";
    };
  };
  lmatch = {
    pname = "lmatch";
    version = "v0.2.4";
    src = fetchFromGitHub {
      owner = "ZL-Audio";
      repo = "ZLLMatch";
      rev = "v0.2.4";
      fetchSubmodules = true;
      sha256 = "sha256-HswX1bWg1Rej+em21N1H3G1TVmeXY+tq0ib9OKNlTN4=";
    };
  };
  splitter = {
    pname = "splitter";
    version = "0.1.0";
    src = fetchFromGitHub {
      owner = "ZL-Audio";
      repo = "ZLSplitter";
      rev = "0.1.0";
      fetchSubmodules = true;
      sha256 = "sha256-qPs2XC6SnRDAISrnJn4lHKV92ZiOp6mMG7EnqANvxBE=";
    };
  };
  warm = {
    pname = "warm";
    version = "0.2.1";
    src = fetchFromGitHub {
      owner = "ZL-Audio";
      repo = "ZLWarm";
      rev = "0.2.1";
      fetchSubmodules = true;
      sha256 = "sha256-+koLt4HZKbDvveMD9HrN+/4fq9H+Y4irCjcZZGBL59s=";
    };
  };
}
