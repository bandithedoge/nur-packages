# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  umu = {
    pname = "umu";
    version = "70645c290dfc6ed10282bf4d2ae38c0bf7b1a3fb";
    src = fetchgit {
      url = "https://github.com/Open-Wine-Components/umu-launcher";
      rev = "70645c290dfc6ed10282bf4d2ae38c0bf7b1a3fb";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-vGkwy/gKZ6wTGax9OJe8+3jVHZOxtQXRAFNlEvzOiAY=";
    };
    date = "2024-11-02";
  };
}
