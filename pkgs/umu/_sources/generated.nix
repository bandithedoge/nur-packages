# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  umu = {
    pname = "umu";
    version = "5cc1c3f23e2ecc9e03267c097e990d1702416852";
    src = fetchgit {
      url = "https://github.com/Open-Wine-Components/umu-launcher";
      rev = "5cc1c3f23e2ecc9e03267c097e990d1702416852";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-Vc/vdtxbCtr6CHTCK3WEX3suNeCnViAj7FuJmZePwHc=";
    };
    date = "2024-09-24";
  };
}
