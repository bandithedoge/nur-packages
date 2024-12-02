# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  airwin2rack = {
    pname = "airwin2rack";
    version = "c90a179ee697db3a3968594f4bc2a5334b0bb621";
    src = fetchgit {
      url = "https://github.com/baconpaul/airwin2rack";
      rev = "c90a179ee697db3a3968594f4bc2a5334b0bb621";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-TlIbC+3kgXbf4kblrpJiJEmqc3bVBhTf8+ir09sXjsY=";
    };
    date = "2024-12-01";
  };
  clap-juce-extensions = {
    pname = "clap-juce-extensions";
    version = "24e70f7f7cde2842528bb66ff50260b1dc0f4dae";
    src = fetchgit {
      url = "https://github.com/free-audio/clap-juce-extensions";
      rev = "24e70f7f7cde2842528bb66ff50260b1dc0f4dae";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-PgOk3nBMFz0A2iC7KuvwlayDiklJTU68e5hpacE2jJM=";
    };
    date = "2024-07-17";
  };
  juce-7_0_12 = {
    pname = "juce-7_0_12";
    version = "7.0.12";
    src = fetchFromGitHub {
      owner = "juce-framework";
      repo = "JUCE";
      rev = "7.0.12";
      fetchSubmodules = false;
      sha256 = "sha256-/awe6D824ZjF17xjkt0wY7dcDuS/s8KKAv1UKHxF0FM=";
    };
  };
}
