# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  monique = {
    pname = "monique";
    version = "df7d3395bce862847d40237350d0161a463dcc0d";
    src = fetchgit {
      url = "https://github.com/surge-synthesizer/monique-monosynth";
      rev = "df7d3395bce862847d40237350d0161a463dcc0d";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = true;
      sparseCheckout = [];
      sha256 = "sha256-oqaESEjdXhrsZ8q98hYIA72E15k865Mrvk9c6mKP6ds=";
    };
    date = "2024-07-30";
  };
}
