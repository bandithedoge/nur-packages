# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  element = {
    pname = "element";
    version = "eb1f04f5b0a2c624dd5e9d5aad00ea7568efa3b6";
    src = fetchgit {
      url = "https://gitlab.com/kushview/element.git";
      rev = "eb1f04f5b0a2c624dd5e9d5aad00ea7568efa3b6";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = true;
      sparseCheckout = [];
      sha256 = "sha256-7mcQdCRYR9yxUWYjzFWALhe7HbLoG5SfpCzas1lCehs=";
    };
    date = "2025-01-23";
  };
  juce-element = {
    pname = "juce-element";
    version = "34b98e72bf4406d6a11c9b81a8a404c1abd5a02e";
    src = fetchgit {
      url = "https://gitlab.com/kushview/juce";
      rev = "34b98e72bf4406d6a11c9b81a8a404c1abd5a02e";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-vdtU5CvKjCtqqbGyMrkdavHkNCb91IERnzySoJXXbwE=";
    };
    date = "2024-06-13";
  };
  lvtk = {
    pname = "lvtk";
    version = "7316c51a08609bcb7cb0bc33105dfe6319e6ff9f";
    src = fetchgit {
      url = "https://github.com/lvtk/lvtk.git";
      rev = "7316c51a08609bcb7cb0bc33105dfe6319e6ff9f";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-lU47jDcS6Tp4b4yWE4maWUIyEEkQqZatBtJ3jbM6v3E=";
    };
  };
}
