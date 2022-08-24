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
    version = "90f9b2d9820b8da03d54a64e523aa1f104b4ff2b";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "90f9b2d9820b8da03d54a64e523aa1f104b4ff2b";
      fetchSubmodules = false;
      sha256 = "sha256-OVQ2hZgWB3zGUQnTC6KvfXrk6KDp17PLG6ymeSn/oFo=";
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
    version = "34a62d7a9121ea154b6dc481d064a8999aedc030";
    src = fetchgit {
      url = "https://gitlab.gnome.org/GNOME/libadwaita";
      rev = "34a62d7a9121ea154b6dc481d064a8999aedc030";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-mNMqDllBCzXoSWM9ethkZsDxte+7l4atatAMdFS21ws=";
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
    version = "cd1aa57a0650d62f15182d0103e0971784d26e7e";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "cd1aa57a0650d62f15182d0103e0971784d26e7e";
      fetchSubmodules = false;
      sha256 = "sha256-YPqTXjXGBY3fn7484Uz4WyCSKXJdtCpFF50KanaISC8=";
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
    version = "112fae6a6ccec932e1824a85e5086bbe866e1ec2";
    src = fetchFromGitHub {
      owner = "tailwindlabs";
      repo = "tailwindcss-intellisense";
      rev = "112fae6a6ccec932e1824a85e5086bbe866e1ec2";
      fetchSubmodules = false;
      sha256 = "sha256-JfhJD2EARTXbwYbuz+xg5GyAq5XcF7H/+JwYywTGBSU=";
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
    version = "16a8597f4d52de948291825698b7d2458998a510";
    src = fetchFromGitHub {
      owner = "drobilla";
      repo = "zix";
      rev = "16a8597f4d52de948291825698b7d2458998a510";
      fetchSubmodules = false;
      sha256 = "sha256-oPTzvVd/JRCidQxh3wOjcL/R3LnhZ885WJtoqct72Z0=";
    };
  };
  zrythm = {
    pname = "zrythm";
    version = "c0b903aaa3adf77b87b10235ae6fd256325a52ed";
    src = fetchgit {
      url = "https://git.sr.ht/~alextee/zrythm";
      rev = "c0b903aaa3adf77b87b10235ae6fd256325a52ed";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-gPBMrxR+15hvbClRPDUepbUaRkIG/L/W3pQU2sAE/5Q=";
    };
  };
}
