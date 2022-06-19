# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub }:
{
  dmenu-flexipatch = {
    pname = "dmenu-flexipatch";
    version = "5c1be5d667ac7094742228de85af4dbdc12706ef";
    src = fetchFromGitHub ({
      owner = "bakkeby";
      repo = "dmenu-flexipatch";
      rev = "5c1be5d667ac7094742228de85af4dbdc12706ef";
      fetchSubmodules = false;
      sha256 = "sha256-WD22+terfPhN73rDiv1J9D2N53hgTOJx9deMl+YkqHs=";
    });
  };
  dwm-flexipatch = {
    pname = "dwm-flexipatch";
    version = "d7456b235a0eb549c752d0cf06198fd29264e21a";
    src = fetchFromGitHub ({
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "d7456b235a0eb549c752d0cf06198fd29264e21a";
      fetchSubmodules = false;
      sha256 = "sha256-j1gTGDV26bLyKA9XgJM+XQoPd9ThusSKaRkWCiV6Z0Q=";
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
    version = "3e7f2aa3cdb4bf0a69dcb0b4c8ad38ff186ada8a";
    src = fetchFromGitHub ({
      owner = "kmonad";
      repo = "kmonad";
      rev = "3e7f2aa3cdb4bf0a69dcb0b4c8ad38ff186ada8a";
      fetchSubmodules = false;
      sha256 = "sha256-rucwXriP49BWGUU0lLwjyp3NjUw2F9J7SdCq12e/sus=";
    });
  };
  libadwaita = {
    pname = "libadwaita";
    version = "3df2638ac1c91df741a72f372f11699a3d9b717b";
    src = fetchgit {
      url = "https://gitlab.gnome.org/GNOME/libadwaita";
      rev = "3df2638ac1c91df741a72f372f11699a3d9b717b";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-v8zb6fpjh10ys8kZ9UQJ+KSZ/wYKfYQBH3rXq6W9x3A=";
    };
  };
  libpanel = {
    pname = "libpanel";
    version = "80823f08b5b0c96dc2ef7ef0f51bd064f152f9ea";
    src = fetchgit {
      url = "https://gitlab.gnome.org/chergert/libpanel";
      rev = "80823f08b5b0c96dc2ef7ef0f51bd064f152f9ea";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-k5I0pfaNnxiDmkD2Lg9v/l7uclUn741wqZBM1YfqmMk=";
    };
  };
  st-flexipatch = {
    pname = "st-flexipatch";
    version = "df36caf56bae629044249c4ee3a4468f6418606f";
    src = fetchFromGitHub ({
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "df36caf56bae629044249c4ee3a4468f6418606f";
      fetchSubmodules = false;
      sha256 = "sha256-wpVVb1EHq3MUG/1SQxUMcDGrpQCstJWIlmB67gprWuw=";
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
