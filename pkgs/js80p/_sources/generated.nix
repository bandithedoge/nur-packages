# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  js80p = {
    pname = "js80p";
    version = "v3.4.0";
    src = fetchFromGitHub {
      owner = "attilammagyar";
      repo = "js80p";
      rev = "v3.4.0";
      fetchSubmodules = false;
      sha256 = "sha256-abKldNKFHKGs8Qn9dbjt8ldgrrkVwoL1jIdkvhB7IkM=";
    };
  };
}
