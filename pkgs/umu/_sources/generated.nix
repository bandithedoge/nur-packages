# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  umu = {
    pname = "umu";
    version = "2c85618613f34412fac928ec5320f5074b76dd24";
    src = fetchgit {
      url = "https://github.com/Open-Wine-Components/umu-launcher";
      rev = "2c85618613f34412fac928ec5320f5074b76dd24";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-TmlbcHW2YreNnKrsB4HmyUBHE88foHGHayn9yD5yIP4=";
    };
    date = "2024-11-26";
  };
}
