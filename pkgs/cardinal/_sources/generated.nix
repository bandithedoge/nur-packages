# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  cardinal = {
    pname = "cardinal";
    version = "c181538949638f291a5d3682be53938350fec2bc";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "Cardinal";
      rev = "c181538949638f291a5d3682be53938350fec2bc";
      fetchSubmodules = true;
      sha256 = "sha256-566HFJfVvaJfuSxAYbULuYckBb1wyImqvstv22wEqgM=";
    };
    date = "2024-03-31";
  };
}
