# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  airwin2rack = {
    pname = "airwin2rack";
    version = "99532a6ea2ab918afc5ce5ce8b278eb19955ed58";
    src = fetchgit {
      url = "https://github.com/baconpaul/airwin2rack";
      rev = "99532a6ea2ab918afc5ce5ce8b278eb19955ed58";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-Az99JICcKPwT555IyeQssJeWnyR3BeFeTkw9i8QMApc=";
    };
    date = "2025-03-02";
  };
  clap-juce-extensions = {
    pname = "clap-juce-extensions";
    version = "fd7fe32ad200cc468c11a669380a71209a981c0d";
    src = fetchgit {
      url = "https://github.com/free-audio/clap-juce-extensions";
      rev = "fd7fe32ad200cc468c11a669380a71209a981c0d";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-bTokBY3VsSjVbdETJARtXyztObjKU+rcP7J1JIvBf0o=";
    };
    date = "2025-02-10";
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
