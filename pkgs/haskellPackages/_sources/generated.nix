# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  kmonad = {
    pname = "kmonad";
    version = "d6815710c56f37341c5f81ba893c6a68491378e8";
    src = fetchFromGitHub {
      owner = "kmonad";
      repo = "kmonad";
      rev = "d6815710c56f37341c5f81ba893c6a68491378e8";
      fetchSubmodules = false;
      sha256 = "sha256-Lx8Yqu/pwe+yKCOyvRPsXzezQBjErmQtMx9BdBHXe1s=";
    };
    date = "2024-10-27";
  };
  taffybar = {
    pname = "taffybar";
    version = "d40093295e8c3e887c80390c5351e42de8faf6ab";
    src = fetchFromGitHub {
      owner = "taffybar";
      repo = "taffybar";
      rev = "d40093295e8c3e887c80390c5351e42de8faf6ab";
      fetchSubmodules = false;
      sha256 = "sha256-bDvsPNXQVIW8hbtVRWZSsbUC/Y1bN1T0AeJr6D2VrdQ=";
    };
    date = "2024-11-04";
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
