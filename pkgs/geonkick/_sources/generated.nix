# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  geonkick = {
    pname = "geonkick";
    version = "v3.5.0";
    src = fetchFromGitHub {
      owner = "Geonkick-Synthesizer";
      repo = "geonkick";
      rev = "v3.5.0";
      fetchSubmodules = false;
      sha256 = "sha256-bqdqAr4NX5WZ6zp0Kq7GFHiy/JkBvDvzuZz7jxtru0Q=";
    };
  };
}
