# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  vkdoom = {
    pname = "vkdoom";
    version = "163ebb5721ef120d05c7139454193c72c8c32136";
    src = fetchgit {
      url = "https://github.com/dpjudas/VkDoom";
      rev = "163ebb5721ef120d05c7139454193c72c8c32136";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = true;
      sparseCheckout = [];
      sha256 = "sha256-igj75C302toj39ZPzDI6fOGivdCQRrCXL/fHvAQX92E=";
    };
    date = "2025-02-22";
  };
}
