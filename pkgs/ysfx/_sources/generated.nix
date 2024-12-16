# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  juce = {
    pname = "juce";
    version = "8.0.1";
    src = fetchgit {
      url = "https://github.com/juce-framework/JUCE";
      rev = "8.0.1";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-2Bx3QHRcYRPrnw2zZzwleUQ+Q1zOKr4bl8cmsT7vUNs=";
    };
  };
  ysfx = {
    pname = "ysfx";
    version = "v0.0.30";
    src = fetchFromGitHub {
      owner = "JoepVanlier";
      repo = "ysfx";
      rev = "v0.0.30";
      fetchSubmodules = true;
      sha256 = "sha256-7FnJeljukY+vlBmkeURBELjytXELh6u2t+EmrNR5w0E=";
    };
  };
}
