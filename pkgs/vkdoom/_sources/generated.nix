# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  vkdoom = {
    pname = "vkdoom";
    version = "54b8dbc0b3d810a32ff0ccad325e86005f3fc9b8";
    src = fetchgit {
      url = "https://github.com/dpjudas/VkDoom";
      rev = "54b8dbc0b3d810a32ff0ccad325e86005f3fc9b8";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = true;
      sparseCheckout = [];
      sha256 = "sha256-L26EhDDMslddnbsF4KxbfVvCspdrsJdoP4LhF+y9dvE=";
    };
    date = "2025-01-13";
  };
}
