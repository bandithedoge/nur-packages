# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  kmonad = {
    pname = "kmonad";
    version = "4e17fc4432dad3664d39274e4e698c7a5497216d";
    src = fetchFromGitHub {
      owner = "kmonad";
      repo = "kmonad";
      rev = "4e17fc4432dad3664d39274e4e698c7a5497216d";
      fetchSubmodules = false;
      sha256 = "sha256-Inh/OXdaw5tG/GrVjjhVELtSTZFPGLG3UcN/J5oFWy8=";
    };
    date = "2024-09-11";
  };
  taffybar = {
    pname = "taffybar";
    version = "715b9630443da947d15dbc8da3d9308bd25d3716";
    src = fetchFromGitHub {
      owner = "taffybar";
      repo = "taffybar";
      rev = "715b9630443da947d15dbc8da3d9308bd25d3716";
      fetchSubmodules = false;
      sha256 = "sha256-JBX5noh+lviiHXRsCVsTUlVO5Ism5z38vO22xbHYKQQ=";
    };
    date = "2024-09-25";
  };
  xmonad-entryhelper = {
    pname = "xmonad-entryhelper";
    version = "ee2d0c14f9258503d7bd62907aa731dd64fa34d0";
    src = fetchFromGitHub {
      owner = "Javran";
      repo = "xmonad-entryhelper";
      rev = "ee2d0c14f9258503d7bd62907aa731dd64fa34d0";
      fetchSubmodules = false;
      sha256 = "sha256-CGaibR0Yejng9IQInm92Zx0pEZS29tJjWvPgaiWgUNQ=";
    };
    date = "2022-05-18";
  };
}
