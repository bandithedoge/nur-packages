# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  just-a-sample-bin = {
    pname = "just-a-sample-bin";
    version = "release";
    src = fetchurl {
      url = "https://github.com/BOBONA/Just-a-Sample/releases/download/release/Linux.VST3.zip";
      sha256 = "sha256-E94eKlubCsIn4TwL4HnU6NJsY7NvrDRBK3LpOGsUgsA=";
    };
  };
}
