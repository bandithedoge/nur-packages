# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  airwin2rack = {
    pname = "airwin2rack";
    version = "a14983e8bdd226f50592e5bb74d9ca99099d5741";
    src = fetchgit {
      url = "https://github.com/baconpaul/airwin2rack";
      rev = "a14983e8bdd226f50592e5bb74d9ca99099d5741";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-EpyG9gwLpVw/ZJcUlPBsZkLkRDznPWJH3xLQXanfMjg=";
    };
    date = "2024-11-21";
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
