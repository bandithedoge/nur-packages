# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  umu = {
    pname = "umu";
    version = "66a1088194bb13c2d86d2c0af316b280a7235640";
    src = fetchgit {
      url = "https://github.com/Open-Wine-Components/umu-launcher";
      rev = "66a1088194bb13c2d86d2c0af316b280a7235640";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-y6SrqNpS7BOqkVmONoPHzsOSNpBE83Xy01kva8h3oRQ=";
    };
    date = "2024-11-14";
  };
}
