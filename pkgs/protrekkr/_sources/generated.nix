# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}:
{
  protrekkr = {
    pname = "protrekkr";
    version = "0b96ba56379eb179423e9dcbec31a08bf0326c9f";
    src = fetchgit {
      url = "https://github.com/falkTX/protrekkr";
      rev = "0b96ba56379eb179423e9dcbec31a08bf0326c9f";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-4CmYp8dyDwSG2uwODTUqgVWVp53uC1lCvqfHUuJDIQw=";
    };
    date = "2019-09-08";
  };
}
