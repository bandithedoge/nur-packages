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
      sha256 = "sha256-8cxLNnnShcLj93DkXFq+5SQiZkLgudlm1olK5jEvJmw=";
    };
    date = "2024-07-30";
  };
}
