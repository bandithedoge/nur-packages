# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  morewaita = {
    pname = "morewaita";
    version = "3a40e0dedd3e363d1cdcab506137949177907c16";
    src = fetchgit {
      url = "https://github.com/somepaulo/MoreWaita";
      rev = "3a40e0dedd3e363d1cdcab506137949177907c16";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-18jI4hADVHC/WCmMTlA+VBuZ1jNGSxL+lO3GwWDiNoU=";
    };
    date = "2025-03-23";
  };
}
