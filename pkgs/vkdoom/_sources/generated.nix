# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  vkdoom = {
    pname = "vkdoom";
    version = "db8bdab669b6f646281ab47ad3d5e6903767321f";
    src = fetchgit {
      url = "https://github.com/dpjudas/VkDoom";
      rev = "db8bdab669b6f646281ab47ad3d5e6903767321f";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = true;
      sparseCheckout = [];
      sha256 = "sha256-u5R8Omw2SMtcZgLcOeusxgdoxa76dADsUl+mqo23h/A=";
    };
    date = "2025-05-03";
  };
}
