# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  vgmtrans = {
    pname = "vgmtrans";
    version = "8e98733d3d5c1fab57f5e3d5f046a2ba873bcecc";
    src = fetchgit {
      url = "https://github.com/vgmtrans/vgmtrans";
      rev = "8e98733d3d5c1fab57f5e3d5f046a2ba873bcecc";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-Ymm87T0Wq2KEmfzLQI+aWPVIKZWomgqLxD2boiyBBnA=";
    };
    date = "2024-07-27";
  };
}
