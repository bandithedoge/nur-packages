# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  vkdoom = {
    pname = "vkdoom";
    version = "4f1316b3fd768fd37368427d12d2ed34cd50305d";
    src = fetchgit {
      url = "https://github.com/dpjudas/VkDoom";
      rev = "4f1316b3fd768fd37368427d12d2ed34cd50305d";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = true;
      sparseCheckout = [];
      sha256 = "sha256-uXrS6Lg8sgbaFlNq8wkui7NeuZYNV1T1ONj3XfP7htE=";
    };
    date = "2025-04-19";
  };
}
