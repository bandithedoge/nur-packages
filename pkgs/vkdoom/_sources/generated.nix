# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  vkdoom = {
    pname = "vkdoom";
    version = "4e9127c0a10983ab6ca26cc6bc23ac30897c5f90";
    src = fetchgit {
      url = "https://github.com/dpjudas/VkDoom";
      rev = "4e9127c0a10983ab6ca26cc6bc23ac30897c5f90";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = true;
      sparseCheckout = [];
      sha256 = "sha256-XM9II0uKUzL5na+a4Ffc/20WcjW8BFwcBNc+Zb3E920=";
    };
    date = "2025-02-20";
  };
}
