# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  vkdoom = {
    pname = "vkdoom";
    version = "43ba3ad0a6ff843b9b9667e62135b476c4acfd1a";
    src = fetchgit {
      url = "https://github.com/dpjudas/VkDoom";
      rev = "43ba3ad0a6ff843b9b9667e62135b476c4acfd1a";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = true;
      sparseCheckout = [];
      sha256 = "sha256-yslgweN8HE7euhhoY/ENaYD9+JjviBEssfUhXwwlaxI=";
    };
    date = "2025-02-17";
  };
}
