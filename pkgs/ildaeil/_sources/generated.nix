# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  ildaeil = {
    pname = "ildaeil";
    version = "b54b21b7a8f481508a65fc7a5149395b23c3e1c0";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "Ildaeil";
      rev = "b54b21b7a8f481508a65fc7a5149395b23c3e1c0";
      fetchSubmodules = true;
      sha256 = "sha256-zn/2LKs122NkN4dSTumBQEoYiHEl7rFuiZxBAIAbPlM=";
    };
    date = "2024-02-28";
  };
}
