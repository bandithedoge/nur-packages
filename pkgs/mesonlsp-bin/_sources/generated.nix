# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  mesonlsp-bin = {
    pname = "mesonlsp-bin";
    version = "v4.1.0";
    src = fetchurl {
      url = "https://github.com/JCWasmx86/mesonlsp/releases/download/v4.1.0/mesonlsp-alpine-static.zip";
      sha256 = "sha256-vlVmWOjXgC/ucSZ5013pDFPgG7+aEm+yg21VBwmS4hs=";
    };
  };
}
