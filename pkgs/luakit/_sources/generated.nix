# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  luakit = {
    pname = "luakit";
    version = "a7e0cddaa590d44625adcaa7423bb68798d9a087";
    src = fetchFromGitHub {
      owner = "luakit";
      repo = "luakit";
      rev = "a7e0cddaa590d44625adcaa7423bb68798d9a087";
      fetchSubmodules = false;
      sha256 = "sha256-uMoDI1y+ku+uB/dJCLONOGN3vhqgfR2/YBFUxjRtWYw=";
    };
    date = "2024-01-30";
  };
}
