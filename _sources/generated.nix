# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
}: {
  dmenu-flexipatch = {
    pname = "dmenu-flexipatch";
    version = "ff2f1552b3d3242355895c1d0a73a16fe6a56834";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dmenu-flexipatch";
      rev = "ff2f1552b3d3242355895c1d0a73a16fe6a56834";
      fetchSubmodules = false;
      sha256 = "sha256-GWMtNPww99lVVhDwpJpM+An3ZbyFgJ3chQBEudr864s=";
    };
  };
  dwm-flexipatch = {
    pname = "dwm-flexipatch";
    version = "91cb32c3edcc6d5049b6d0115309d75ecda547bb";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "91cb32c3edcc6d5049b6d0115309d75ecda547bb";
      fetchSubmodules = false;
      sha256 = "sha256-NdGolOpnwPVw8mTnDQoX7dSvnD7VakBjS8fvnJXAyZ8=";
    };
  };
  kiwmi = {
    pname = "kiwmi";
    version = "17814972abe6a8811a586fa87c99a2b16a86075f";
    src = fetchFromGitHub {
      owner = "buffet";
      repo = "kiwmi";
      rev = "17814972abe6a8811a586fa87c99a2b16a86075f";
      fetchSubmodules = false;
      sha256 = "sha256-n9PA6cyEjSlnDcRrqIkO83UaCE/hovbi/oZon1B+nuw=";
    };
  };
  libadwaita = {
    pname = "libadwaita";
    version = "7af874ea254ba924e42619ed3bbd27ec23340fcc";
    src = fetchgit {
      url = "https://gitlab.gnome.org/GNOME/libadwaita";
      rev = "7af874ea254ba924e42619ed3bbd27ec23340fcc";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-rPR3pNj32hFNbvMsNRXwUI1q3NmaH63T7Ca2Uoy4P4c=";
    };
  };
  luakit = {
    pname = "luakit";
    version = "6cac83342bfe87ea57f05b67976f8def814b3934";
    src = fetchFromGitHub {
      owner = "luakit";
      repo = "luakit";
      rev = "6cac83342bfe87ea57f05b67976f8def814b3934";
      fetchSubmodules = false;
      sha256 = "sha256-yPxYsi5cQEKKQqNHrMPkWF7UdKSPsPSVg7/brq9vvME=";
    };
  };
  slock-flexipatch = {
    pname = "slock-flexipatch";
    version = "3131706fc5f202759cbf81c661df14578d721fb8";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "slock-flexipatch";
      rev = "3131706fc5f202759cbf81c661df14578d721fb8";
      fetchSubmodules = false;
      sha256 = "sha256-w+C/SfK4DgqtgFqhBTejgAE3+SJwPYGb4oq/oO+TRXU=";
    };
  };
  st-flexipatch = {
    pname = "st-flexipatch";
    version = "9e0e41978125213d4469a30d05047a3484b13a7d";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "9e0e41978125213d4469a30d05047a3484b13a7d";
      fetchSubmodules = false;
      sha256 = "sha256-o7kh5i6shCtuUo/GXx46bS0abX6JypN59pZKuJ96dkA=";
    };
  };
  taffybar = {
    pname = "taffybar";
    version = "945a08452660de603193da8d297d559fdca497d1";
    src = fetchFromGitHub {
      owner = "taffybar";
      repo = "taffybar";
      rev = "945a08452660de603193da8d297d559fdca497d1";
      fetchSubmodules = false;
      sha256 = "sha256-3H8sRK7qszYpVnX9o1UMCDUGTGtS+KLhyZ+Pu0h8EbY=";
    };
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
  };
  zrythm = {
    pname = "zrythm";
    version = "43e1fa769a460f285ddaa713dd4d14312a036731";
    src = fetchgit {
      url = "https://git.sr.ht/~alextee/zrythm";
      rev = "43e1fa769a460f285ddaa713dd4d14312a036731";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-1c87u6KttOGXJDS6hXJbkxLBSI6ByqYws3sWRKpoCyk=";
    };
  };
}
