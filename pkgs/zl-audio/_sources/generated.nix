# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  compressor = {
    pname = "compressor";
    version = "767dbc31824135c2e2364f7c66590b4e581a134d";
    src = fetchgit {
      url = "https://github.com/ZL-Audio/ZLCompressor";
      rev = "767dbc31824135c2e2364f7c66590b4e581a134d";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-+iooq22khEZvdDqWq8YnzjaFg8i0Mn5OT66D0l7p1No=";
    };
    date = "2024-12-18";
  };
  equalizer = {
    pname = "equalizer";
    version = "0.4.5";
    src = fetchFromGitHub {
      owner = "ZL-Audio";
      repo = "ZLEqualizer";
      rev = "0.4.5";
      fetchSubmodules = true;
      sha256 = "sha256-M7b0ADgIhLtfjwFhw7F8EU31BHQRxFQQY1u6AE9yXJY=";
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
