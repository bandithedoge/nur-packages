# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  vkdoom = {
    pname = "vkdoom";
    version = "340a98950f5afda4fc1892a1d6bc2966df279583";
    src = fetchgit {
      url = "https://github.com/dpjudas/VkDoom";
      rev = "340a98950f5afda4fc1892a1d6bc2966df279583";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = true;
      sparseCheckout = [];
      sha256 = "sha256-om3lxkF57xrX2mpizLwafuQdmIFckS2f8eZbbPvQLiQ=";
    };
    date = "2025-04-05";
  };
}
