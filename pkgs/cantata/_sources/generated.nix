# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  cantata = {
    pname = "cantata";
    version = "v3.3.0";
    src = fetchFromGitHub {
      owner = "nullobsi";
      repo = "cantata";
      rev = "v3.3.0";
      fetchSubmodules = false;
      sha256 = "sha256-dx0XkMUrxg3+c3fxhXjYK36x5M8xbX+IyVAalvib2iY=";
    };
  };
}
