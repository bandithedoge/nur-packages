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
    version = "0797fdcabef84f57b064c7b4507743afebc66589";
    src = fetchgit {
      url = "https://github.com/lvtk/lvtk.git";
      rev = "0797fdcabef84f57b064c7b4507743afebc66589";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-Z79zy2/OZTO6RTrAqgTHTzB00LtFTFiJ272RvQRpbH8=";
    };
    date = "2024-11-05";
  };
}
