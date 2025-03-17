# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  airwin2rack = {
    pname = "airwin2rack";
    version = "f2703a84db008925c2264413a68413ff27137c08";
    src = fetchgit {
      url = "https://github.com/baconpaul/airwin2rack";
      rev = "f2703a84db008925c2264413a68413ff27137c08";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-8IGMPjgO3kqnM1geDDTkuMiIijqq3F9rbZelp7rgqlk=";
    };
    date = "2025-03-16";
  };
  clap-juce-extensions = {
    pname = "clap-juce-extensions";
    version = "ea834dfd366ab2103b98e92eaacb581c69fc2e0b";
    src = fetchgit {
      url = "https://github.com/free-audio/clap-juce-extensions";
      rev = "ea834dfd366ab2103b98e92eaacb581c69fc2e0b";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-hbelV7Bo1bKLjanoSHdOPedgNxvI7j2cHXM1bFaywmI=";
    };
    date = "2025-03-17";
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
