# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}:
{
  ildaeil = {
    pname = "ildaeil";
    version = "8c3aeec2a8c963f56e274ae472dad6767f29b495";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "Ildaeil";
      rev = "8c3aeec2a8c963f56e274ae472dad6767f29b495";
      fetchSubmodules = true;
      sha256 = "sha256-qq2o5dEXVoIn/t1qR+JQvTesTCuXz11ITJssPL3t4Lk=";
    };
    date = "2025-06-26";
  };
}
