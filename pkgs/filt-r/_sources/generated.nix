# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}:
{
  filt-r = {
    pname = "filt-r";
    version = "v1.0.9";
    src = fetchFromGitHub {
      owner = "tiagolr";
      repo = "filtr";
      rev = "v1.0.9";
      fetchSubmodules = true;
      sha256 = "sha256-QLqdq6I7gUeItnjsZETVuBSsbdtwXCQkfOgQO6Yu1nE=";
    };
  };
}
