# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  radium = {
    pname = "radium";
    version = "4d09864b2930db8920143c3e1b6ea26297c55ff0";
    src = fetchgit {
      url = "https://github.com/kmatheussen/radium";
      rev = "4d09864b2930db8920143c3e1b6ea26297c55ff0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-m3turPgCKvSC7OflJItkg2qz4HmQpQnXKuivjMSNEzg=";
    };
    date = "2024-12-15";
  };
}
