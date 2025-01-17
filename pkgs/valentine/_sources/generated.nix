# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  catch2 = {
    pname = "catch2";
    version = "v3.4.0";
    src = fetchgit {
      url = "https://github.com/catchorg/Catch2.git";
      rev = "v3.4.0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-DqGGfNjKPW9HFJrX9arFHyNYjB61uoL6NabZatTWrr0=";
    };
  };
  valentine = {
    pname = "valentine";
    version = "v1.0.1";
    src = fetchFromGitHub {
      owner = "tote-bag-labs";
      repo = "valentine";
      rev = "v1.0.1";
      fetchSubmodules = true;
      sha256 = "sha256-l/rwSnvPizRsWBle9YaVIadVuWJlqLy4UycvmGLITt8=";
    };
  };
}
