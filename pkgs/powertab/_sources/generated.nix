# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  powertab = {
    pname = "powertab";
    version = "2.0.20";
    src = fetchFromGitHub {
      owner = "powertab";
      repo = "powertabeditor";
      rev = "2.0.20";
      fetchSubmodules = false;
      sha256 = "sha256-d2pFyyQN5NF7pzTVCtjAqm04UibN31ibL5UdIqIj+S0=";
    };
  };
}
