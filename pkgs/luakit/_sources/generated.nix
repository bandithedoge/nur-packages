# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  luakit = {
    pname = "luakit";
    version = "869d5f0651468d0b9a4491ea85636ca96823fc2b";
    src = fetchFromGitHub {
      owner = "luakit";
      repo = "luakit";
      rev = "869d5f0651468d0b9a4491ea85636ca96823fc2b";
      fetchSubmodules = false;
      sha256 = "sha256-I42QgO0Vk7VwTavAvGIIHtaimg9klf6XFgo2xaaz9jY=";
    };
    date = "2024-03-20";
  };
}
