# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  panacea-bin = {
    pname = "panacea-bin";
    version = "v1.0.1";
    src = fetchTarball {
      url = "https://github.com/consint/Panacea/releases/download/v1.0.1/Panacea_v1.0.1_Linux_vst.zip";
      sha256 = "sha256-aStHjYIox00Y75ep/bfa/lnKxIxg5fFuw/YUnC6iVJY=";
    };
  };
}
