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
    version = "2c180b8d9cf3e962cf51224dde1d143fa15920dd";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "2c180b8d9cf3e962cf51224dde1d143fa15920dd";
      fetchSubmodules = false;
      sha256 = "sha256-hZBhYxDey0lBW3w1qetdHNz5POo2vJTHbeMC1mD3ll8=";
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
    version = "24e143e90ec2c7c4de20a754883c37331eb7a38d";
    src = fetchgit {
      url = "https://gitlab.gnome.org/GNOME/libadwaita";
      rev = "24e143e90ec2c7c4de20a754883c37331eb7a38d";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-pnYDv4z/HrMOderubZCLGdRz+7ntJzpaobbbFkypd6A=";
    };
  };
  lua-dbus = {
    pname = "lua-dbus";
    version = "cdef26d09aa61d7f1f175675040383f6ae0becbb";
    src = fetchFromGitHub {
      owner = "dodo";
      repo = "lua-dbus";
      rev = "cdef26d09aa61d7f1f175675040383f6ae0becbb";
      fetchSubmodules = false;
      sha256 = "sha256-S+W6QTqv4kdyR86GCyDLnkml10dO4ZVNXEd3/7vDFGE=";
    };
  };
  lua-dbus_proxy = {
    pname = "lua-dbus_proxy";
    version = "c9253bde3fa5a64261953d1b196c57fabf9f8561";
    src = fetchFromGitHub {
      owner = "stefano-m";
      repo = "lua-dbus_proxy";
      rev = "c9253bde3fa5a64261953d1b196c57fabf9f8561";
      fetchSubmodules = false;
      sha256 = "sha256-mf49sgSO3zkeDDyezSr9BmvX2Fah8Hc59eLREP5G+p4=";
    };
  };
  luakit = {
    pname = "luakit";
    version = "a8b1cd5c0cc0c9a0126e44ccc78b78e962092adc";
    src = fetchFromGitHub {
      owner = "luakit";
      repo = "luakit";
      rev = "a8b1cd5c0cc0c9a0126e44ccc78b78e962092adc";
      fetchSubmodules = false;
      sha256 = "sha256-ZF2tmZMuv5tbflWSh+0sCd0tE/rmHu0X4LqSygbH16w=";
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
    version = "34cd955f148709e5adc5fce380f6528944f144e2";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "34cd955f148709e5adc5fce380f6528944f144e2";
      fetchSubmodules = false;
      sha256 = "sha256-R5NZ/9c2uea1WxZ5sFvlCf+zzFvo7E3CM4iiXLYZasA=";
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
  tailwindcss-intellisense = {
    pname = "tailwindcss-intellisense";
    version = "86d93aaa18906c4fc82f8296d33afab932cc2e6b";
    src = fetchFromGitHub {
      owner = "tailwindlabs";
      repo = "tailwindcss-intellisense";
      rev = "86d93aaa18906c4fc82f8296d33afab932cc2e6b";
      fetchSubmodules = false;
      sha256 = "sha256-8D8cz6+d9Bc7Sa7vJ8GAvXOZ4MJjluaXnwvRU9H/IEg=";
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
  zix = {
    pname = "zix";
    version = "afc6ef7e54988fd68f33df21ec2a220e6bfc49f4";
    src = fetchFromGitHub {
      owner = "drobilla";
      repo = "zix";
      rev = "afc6ef7e54988fd68f33df21ec2a220e6bfc49f4";
      fetchSubmodules = false;
      sha256 = "sha256-JW0D1sfyeE2/RzyX1iZ73xGFp/6WE5CgaUqstlh1yMk=";
    };
  };
  zrythm = {
    pname = "zrythm";
    version = "63fe86cf185fc2f871da2942ba781434c8fb88db";
    src = fetchgit {
      url = "https://git.sr.ht/~alextee/zrythm";
      rev = "63fe86cf185fc2f871da2942ba781434c8fb88db";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-J5yS33vShq/xQI2lNWGvskXp8fCBn0gqb4adG16Fnnw=";
    };
  };
}
