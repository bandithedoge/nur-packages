# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}:
{
  vgmtrans = {
    pname = "vgmtrans";
    version = "97a4be3177453d913a45cea2cfbdfbae633e81b0";
    src = fetchgit {
      url = "https://github.com/vgmtrans/vgmtrans";
      rev = "97a4be3177453d913a45cea2cfbdfbae633e81b0";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-s7a0xyjLtek5BoUKYW9H3PdQahlMnjNyWciAu64Bajw=";
    };
    date = "2025-07-02";
  };
}
