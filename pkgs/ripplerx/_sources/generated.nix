# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  ripplerx = {
    pname = "ripplerx";
    version = "v1.3.7";
    src = fetchFromGitHub {
      owner = "tiagolr";
      repo = "ripplerx";
      rev = "v1.3.7";
      fetchSubmodules = true;
      sha256 = "sha256-nV9uegFkCJ8OmB2ZFkEo2hCwssY4y0lLcdz0Kd0eqsw=";
    };
  };
}
