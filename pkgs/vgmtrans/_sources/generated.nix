# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  vgmtrans = {
    pname = "vgmtrans";
    version = "a813d7af653ae05366ec164d42827e8ff386bf03";
    src = fetchgit {
      url = "https://github.com/vgmtrans/vgmtrans";
      rev = "a813d7af653ae05366ec164d42827e8ff386bf03";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-2WPC/6MnmgnoDB5gIGmWIR4sIC9RkYg6yoGntilzjmE=";
    };
    date = "2025-03-22";
  };
}
