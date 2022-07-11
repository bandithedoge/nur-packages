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
    version = "5f7df0b0dc78ae00f21d5bbe892456c450506b9b";
    src = fetchFromGitHub ({
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "5f7df0b0dc78ae00f21d5bbe892456c450506b9b";
      fetchSubmodules = false;
      sha256 = "sha256-Gb7JjK6wGVnsgq6brmKDHaGvlpO4/pqnzo1NCw/j+PM=";
    });
  };
  haskellNix = {
    pname = "haskellNix";
    version = "6fd5f3ce0bebe84c4a9506aea3c9130cd20c471a";
    src = fetchFromGitHub ({
      owner = "input-output-hk";
      repo = "haskell.nix";
      rev = "6fd5f3ce0bebe84c4a9506aea3c9130cd20c471a";
      fetchSubmodules = false;
      sha256 = "sha256-0ZWUKkV2IIg2PtzmDpI0a4bJcVBYSDGlLfQ8tF9JNNw=";
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
    version = "ac3c0db4f7fca0f66980d1b76a64630a66a36c21";
    src = fetchFromGitHub ({
      owner = "kmonad";
      repo = "kmonad";
      rev = "ac3c0db4f7fca0f66980d1b76a64630a66a36c21";
      fetchSubmodules = false;
      sha256 = "sha256-XrBCppEVnzh+RH2fz4+k/kqmUP3AEn8PP+IfF05CS14=";
    });
  };
  libadwaita = {
    pname = "libadwaita";
    version = "e35e7473977b8b105fdc7504eba30f24f33237fa";
    src = fetchgit {
      url = "https://gitlab.gnome.org/GNOME/libadwaita";
      rev = "e35e7473977b8b105fdc7504eba30f24f33237fa";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-XskZ9IJP0G9T0S0jhyF4rHkOOIWeXGdjvEa5cXFWPh0=";
    };
  };
  libpanel = {
    pname = "libpanel";
    version = "11a83c39014254540015999a262f41a4e0fc7579";
    src = fetchgit {
      url = "https://gitlab.gnome.org/chergert/libpanel";
      rev = "11a83c39014254540015999a262f41a4e0fc7579";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-Y4zpGLdHaqeNj4cLpRo037sU3VnuiZgAuUAyw8TUsLs=";
    };
  };
  st-flexipatch = {
    pname = "st-flexipatch";
    version = "dc8abceecaa18c064c23b5296f74a3c55dce2cca";
    src = fetchFromGitHub ({
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "dc8abceecaa18c064c23b5296f74a3c55dce2cca";
      fetchSubmodules = false;
      sha256 = "sha256-fY4F4Y8+vcDEob6QXhtsNiaL2loThbB6lor8buQbG8c=";
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
    version = "e5ebae347306979cbde0906d1cc04dd0713586eb";
    src = fetchgit {
      url = "https://git.sr.ht/~alextee/zrythm";
      rev = "e5ebae347306979cbde0906d1cc04dd0713586eb";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-0KD5FlKuJ9dPxNPAnTlWClCC+VW09z1LVNF/VFn/gfk=";
    };
  };
}
