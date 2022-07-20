# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub }:
{
  dmenu-flexipatch = {
    pname = "dmenu-flexipatch";
    version = "333a73870906790560ee4d2ae77d477284649abf";
    src = fetchFromGitHub ({
      owner = "bakkeby";
      repo = "dmenu-flexipatch";
      rev = "333a73870906790560ee4d2ae77d477284649abf";
      fetchSubmodules = false;
      sha256 = "sha256-dKCk1F3RH3DKGQnfC3mpypba47jn4Qh6ophLpecgFxE=";
    });
  };
  dwm-flexipatch = {
    pname = "dwm-flexipatch";
    version = "df5eba3f8fc32c3843fe6ba35b18743312ed27ed";
    src = fetchFromGitHub ({
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "df5eba3f8fc32c3843fe6ba35b18743312ed27ed";
      fetchSubmodules = false;
      sha256 = "sha256-8q0pWM/rKix4puxH/QM8gGnRu+Zh5CyWYevTa1+KAB4=";
    });
  };
  haskellNix = {
    pname = "haskellNix";
    version = "fbd32c9c441fbd35a85049978bffb4b2eff2f04b";
    src = fetchFromGitHub ({
      owner = "input-output-hk";
      repo = "haskell.nix";
      rev = "fbd32c9c441fbd35a85049978bffb4b2eff2f04b";
      fetchSubmodules = false;
      sha256 = "sha256-0csdrpL5ZFvlsxwF1QS6gs4T9ygk6Gz/D+cfMo/zEkY=";
    });
  };
  kiwmi = {
    pname = "kiwmi";
    version = "822e5b5063059ae169b7690c66484c65097e4cdd";
    src = fetchFromGitHub ({
      owner = "buffet";
      repo = "kiwmi";
      rev = "822e5b5063059ae169b7690c66484c65097e4cdd";
      fetchSubmodules = false;
      sha256 = "sha256-ZhPk95dMyA4ia2ChtJRUGMfe55zwC7Vi80glFWBXOPk=";
    });
  };
  kmonad = {
    pname = "kmonad";
    version = "95bb58b7347ebacb4654fb21c798e1cd10331b0d";
    src = fetchFromGitHub ({
      owner = "kmonad";
      repo = "kmonad";
      rev = "95bb58b7347ebacb4654fb21c798e1cd10331b0d";
      fetchSubmodules = false;
      sha256 = "sha256-+mxd8hpxt7aWtJlhHn6HUNj9CWlvRQrHdFvrZMWU+WY=";
    });
  };
  libadwaita = {
    pname = "libadwaita";
    version = "e9a9b9b906d1c74413565560c985f8549b9cf562";
    src = fetchgit {
      url = "https://gitlab.gnome.org/GNOME/libadwaita";
      rev = "e9a9b9b906d1c74413565560c985f8549b9cf562";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-XTmRW/k/zuc+OC08318fzAcwoICexOzqHOBmj4qv+3I=";
    };
  };
  st-flexipatch = {
    pname = "st-flexipatch";
    version = "f0bad9ac44ec2785e8efa8a5c42800db2e6d409e";
    src = fetchFromGitHub ({
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "f0bad9ac44ec2785e8efa8a5c42800db2e6d409e";
      fetchSubmodules = false;
      sha256 = "sha256-pbZZwmYuRq6vd/zvUxbQwuZJGSmTewHX8RNINi704Jw=";
    });
  };
  taffybar = {
    pname = "taffybar";
    version = "945a08452660de603193da8d297d559fdca497d1";
    src = fetchFromGitHub ({
      owner = "taffybar";
      repo = "taffybar";
      rev = "945a08452660de603193da8d297d559fdca497d1";
      fetchSubmodules = false;
      sha256 = "sha256-3H8sRK7qszYpVnX9o1UMCDUGTGtS+KLhyZ+Pu0h8EbY=";
    });
  };
  xmonad-entryhelper = {
    pname = "xmonad-entryhelper";
    version = "ee2d0c14f9258503d7bd62907aa731dd64fa34d0";
    src = fetchFromGitHub ({
      owner = "Javran";
      repo = "xmonad-entryhelper";
      rev = "ee2d0c14f9258503d7bd62907aa731dd64fa34d0";
      fetchSubmodules = false;
      sha256 = "sha256-CGaibR0Yejng9IQInm92Zx0pEZS29tJjWvPgaiWgUNQ=";
    });
  };
  zrythm = {
    pname = "zrythm";
    version = "e6b20321edba6d4cb48b84d52a109f459a896ee1";
    src = fetchgit {
      url = "https://git.sr.ht/~alextee/zrythm";
      rev = "e6b20321edba6d4cb48b84d52a109f459a896ee1";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-r3ChJx6LxDTWPUBqxg/9hsqT2z2XdEjqIQNYRdQ65m8=";
    };
  };
}
