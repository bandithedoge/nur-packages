# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  clap = {
    pname = "clap";
    version = "1.2.6";
    src = fetchFromGitHub {
      owner = "free-audio";
      repo = "clap";
      rev = "1.2.6";
      fetchSubmodules = false;
      sha256 = "sha256-QyIuuiwFg5DP2Ao/LOKYiBXxKHQ0FbFhssIIUnEQz+c=";
    };
  };
  clap-helpers = {
    pname = "clap-helpers";
    version = "f0d528c5599705989fc7f8085f37ae67ee4d4129";
    src = fetchgit {
      url = "https://github.com/mfisher31/clap-helpers";
      rev = "f0d528c5599705989fc7f8085f37ae67ee4d4129";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-CWP1fP7fLjqb/RgiO+Bur9qm4rRDJMd757Qtjo2yubc=";
    };
    date = "2025-03-07";
  };
  element = {
    pname = "element";
    version = "5e06f8cf03f8de99251cdd4a560ab86528a1051d";
    src = fetchgit {
      url = "https://github.com/kushview/element";
      rev = "5e06f8cf03f8de99251cdd4a560ab86528a1051d";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = true;
      sparseCheckout = [];
      sha256 = "sha256-WEsE9dWGXqOImRvNPew0fY4BPlQ1psv1KD//6QrSovM=";
    };
    date = "2025-03-17";
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
    version = "6e5f8d72513f76cc8b11f26a7aeb6a77dbe52923";
    src = fetchgit {
      url = "https://github.com/lvtk/lvtk.git";
      rev = "6e5f8d72513f76cc8b11f26a7aeb6a77dbe52923";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-IXgnOPsOnUSlQXbhbdNk+Qpv9yHb9tWrppAocXsBCi0=";
    };
    date = "2025-02-19";
  };
  lvtk-host = {
    pname = "lvtk-host";
    version = "604e642c65f7a457397d72cb0b99e354f1e48abd";
    src = fetchgit {
      url = "https://github.com/lvtk/lvtk-host.git";
      rev = "604e642c65f7a457397d72cb0b99e354f1e48abd";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-lIP/yyMohNyJB+LEZcG0dW/8KNFq7S85GWkmye+oaiM=";
    };
    date = "2025-02-01";
  };
}
