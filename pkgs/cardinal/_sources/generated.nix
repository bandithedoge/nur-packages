# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  cardinal = {
    pname = "cardinal";
    version = "0b01d0844a87071a5668133833f8ec6a6080a15f";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "Cardinal";
      rev = "0b01d0844a87071a5668133833f8ec6a6080a15f";
      fetchSubmodules = true;
      sha256 = "sha256-rmUDtJCfjT1U1d4DmKdLVuAxKbJJK6zVUE9FGC4+sSw=";
    };
    date = "2024-11-01";
  };
}
