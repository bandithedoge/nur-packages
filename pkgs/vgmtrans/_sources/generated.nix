# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  vgmtrans = {
    pname = "vgmtrans";
    version = "50639b57b7655cb9cdd5626835720de3f08f9f8f";
    src = fetchgit {
      url = "https://github.com/vgmtrans/vgmtrans";
      rev = "50639b57b7655cb9cdd5626835720de3f08f9f8f";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-k3f3abbd4H/d4CUWMIBQ+0FL7GzfUKp3SAp0LUXdH9c=";
    };
    date = "2025-03-01";
  };
}
