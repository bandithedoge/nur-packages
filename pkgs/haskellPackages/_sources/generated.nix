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
    version = "3280e02f12ac64a4acb4763d8a02755b916a3f04";
    src = fetchFromGitHub {
      owner = "taffybar";
      repo = "taffybar";
      rev = "3280e02f12ac64a4acb4763d8a02755b916a3f04";
      fetchSubmodules = false;
      sha256 = "sha256-VkxgRi2jjpru+Wx48vAvAE8rMqRbVzVlHqAuKfovsfI=";
    };
    date = "2024-10-27";
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
