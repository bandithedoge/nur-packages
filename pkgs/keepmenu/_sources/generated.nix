# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  keepmenu = {
    pname = "keepmenu";
    version = "6d41ce956a11259df935b34f82dc5b0c5e7fd2ea";
    src = fetchFromGitHub {
      owner = "firecat53";
      repo = "keepmenu";
      rev = "6d41ce956a11259df935b34f82dc5b0c5e7fd2ea";
      fetchSubmodules = false;
      sha256 = "sha256-QufdabJX4ISUu+Pntj3sEp1jByRhozXUNTaIjTyXlQA=";
    };
    date = "2024-07-05";
  };
}
