# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  harrison-32c = {
    pname = "harrison-32c";
    version = "3-5-22";
    src = fetchurl {
      url = "https://rsrc.harrisonconsoles.com/ava/release/32C/3-5-22/Harrison_32C-linux-amd64.tar.gz";
      sha256 = "sha256-CelnaeTNo5mkmiFNjxbsN0c+pcbjLSq4Tw3bb5toIHU=";
    };
  };
  harrison-ava = {
    pname = "harrison-ava";
    version = "10-27-22";
    src = fetchurl {
      url = "https://rsrc.harrisonconsoles.com/ava/release/AVA/10-27-22/Harrison_AVA-linux-amd64.tar.gz";
      sha256 = "sha256-oENxkmDdV0xX1hXkJbh0EhwBpp4+CYuqtZo2j6SY2bo=";
    };
  };
}
