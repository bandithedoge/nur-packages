# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  umu = {
    pname = "umu";
    version = "b0c0d44e0e533b42790360d30430a69b330849d6";
    src = fetchgit {
      url = "https://github.com/Open-Wine-Components/umu-launcher";
      rev = "b0c0d44e0e533b42790360d30430a69b330849d6";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-AkhWHfn1fu/1/iDCbKeyFH6oi3PUA6+ehGBLqBJk49M=";
    };
    date = "2024-12-08";
  };
}
