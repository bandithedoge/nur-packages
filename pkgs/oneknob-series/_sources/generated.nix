# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  oneknob-series = {
    pname = "oneknob-series";
    version = "b2008564b4aa1a57e817d5fbc84166545221283e";
    src = fetchgit {
      url = "https://github.com/DISTRHO/OneKnob-Series";
      rev = "b2008564b4aa1a57e817d5fbc84166545221283e";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-giODaJ3cWGbcV57wq/zEE8kyBfgxCJk6IW9eHrE/wqk=";
    };
    date = "2024-03-07";
  };
}
