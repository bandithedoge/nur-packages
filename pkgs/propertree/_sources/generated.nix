# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  propertree = {
    pname = "propertree";
    version = "7f5189274ba00ed0b54ac277c4d493b1f68864f7";
    src = fetchgit {
      url = "https://github.com/corpnewt/ProperTree";
      rev = "7f5189274ba00ed0b54ac277c4d493b1f68864f7";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-h/Lx4HIiXZBe7N+YZlbn4EtfkotFPezNJ7LfhXJpo8k=";
    };
    date = "2025-01-18";
  };
}
