# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  propertree = {
    pname = "propertree";
    version = "727b3834a6281ac4d8478919a3ec00c503a3d886";
    src = fetchgit {
      url = "https://github.com/corpnewt/ProperTree";
      rev = "727b3834a6281ac4d8478919a3ec00c503a3d886";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-seOJn0K+Vkp53vuLvSLFHIED6LyfQpJXjMrFiGobnUY=";
    };
    date = "2024-11-13";
  };
}
