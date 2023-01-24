# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  bling = {
    pname = "bling";
    version = "af90ae42a91d825b17e129659522ff1643ce4908";
    src = fetchFromGitHub {
      owner = "blingcorp";
      repo = "bling";
      rev = "af90ae42a91d825b17e129659522ff1643ce4908";
      fetchSubmodules = false;
      sha256 = "sha256-mGm4Ydq1K4y2TLgqdYsjsSprk0KHRjSnQtYjqZ+mh2w=";
    };
    date = "2023-01-23";
  };
  cardinal = {
    pname = "cardinal";
    version = "53b38f0c2d407385aa513a0889bd9ab34f725a30";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "Cardinal";
      rev = "53b38f0c2d407385aa513a0889bd9ab34f725a30";
      fetchSubmodules = true;
      sha256 = "sha256-rb9mh2lGUhK6WZDxWNW+peIZSWr/5FGAHjYBSbZaF6s=";
    };
    date = "2023-01-12";
  };
  carla = {
    pname = "carla";
    version = "378cb66ee599f07908627ff245eae5f8030c4988";
    src = fetchFromGitHub {
      owner = "falkTX";
      repo = "Carla";
      rev = "378cb66ee599f07908627ff245eae5f8030c4988";
      fetchSubmodules = false;
      sha256 = "sha256-xB/e/C1MfTo9P4Ta4ggYfxD/F8lR82eM3+CtcS9ex9M=";
    };
    date = "2023-01-04";
  };
  dmenu-flexipatch = {
    pname = "dmenu-flexipatch";
    version = "05f5efc5e544fdb8e7744eb79a6a5d6f882b4d4c";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dmenu-flexipatch";
      rev = "05f5efc5e544fdb8e7744eb79a6a5d6f882b4d4c";
      fetchSubmodules = false;
      sha256 = "sha256-6hGunum5+IBSpxJPvEOAgNmCkDNbm3R++RSTg8TL8Vo=";
    };
    date = "2022-10-26";
  };
  dwm-flexipatch = {
    pname = "dwm-flexipatch";
    version = "954e60b735eb4084654d6473124d79cfa134a20b";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "954e60b735eb4084654d6473124d79cfa134a20b";
      fetchSubmodules = false;
      sha256 = "sha256-pz3ojaDCX8QvP6vywFEeLOVbmxyHJ6GtgUz8RXheRa8=";
    };
    date = "2023-01-18";
  };
  keepmenu = {
    pname = "keepmenu";
    version = "1.3.1";
    src = fetchFromGitHub {
      owner = "firecat53";
      repo = "keepmenu";
      rev = "1.3.1";
      fetchSubmodules = false;
      sha256 = "sha256-1s+vl5j0oPERUvJCKFTvLubCF8Nhx7OtkPjpWmpEG/o=";
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
    date = "2022-07-30";
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
    date = "2015-04-22";
  };
  lua-dbus_proxy = {
    pname = "lua-dbus_proxy";
    version = "v0.10.3";
    src = fetchFromGitHub {
      owner = "stefano-m";
      repo = "lua-dbus_proxy";
      rev = "v0.10.3";
      fetchSubmodules = false;
      sha256 = "sha256-Yd8TN/vKiqX7NOZyy8OwOnreWS5gdyVMTAjFqoAuces=";
    };
  };
  luakit = {
    pname = "luakit";
    version = "b3be1f8549464b7d48f832a74b8388385a024a81";
    src = fetchFromGitHub {
      owner = "luakit";
      repo = "luakit";
      rev = "b3be1f8549464b7d48f832a74b8388385a024a81";
      fetchSubmodules = false;
      sha256 = "sha256-dOAb1Ob+5pdL36t0DxZlYaHH3LzTqUE6+THdQrWocNA=";
    };
    date = "2023-01-23";
  };
  lv2vst = {
    pname = "lv2vst";
    version = "30a669a021812da05258519cef9d4202f5ce26c3";
    src = fetchFromGitHub {
      owner = "x42";
      repo = "lv2vst";
      rev = "30a669a021812da05258519cef9d4202f5ce26c3";
      fetchSubmodules = false;
      sha256 = "sha256-WFVscNivFrsADl7w5pSYx9g+UzK2XUBF7x0Iqg8WKiQ=";
    };
    date = "2020-06-07";
  };
  raze = {
    pname = "raze";
    version = "1.6.2";
    src = fetchFromGitHub {
      owner = "ZDoom";
      repo = "Raze";
      rev = "1.6.2";
      fetchSubmodules = false;
      sha256 = "sha256-5EXU7mXhg9gvNvz13OCvzJHMb4VArYQj/6rTmzDK6uY=";
    };
  };
  slock-flexipatch = {
    pname = "slock-flexipatch";
    version = "780a7887a3b976a48786f991d55fc8a474e76a25";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "slock-flexipatch";
      rev = "780a7887a3b976a48786f991d55fc8a474e76a25";
      fetchSubmodules = false;
      sha256 = "sha256-3jzEXIaH6qZkbvumlYqPSW1kDjg8obDMVoj6y3Vhe4I=";
    };
    date = "2022-10-06";
  };
  st-flexipatch = {
    pname = "st-flexipatch";
    version = "a8e2af0d923e7b6f7b19e8fa516bcd0670dfae84";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "a8e2af0d923e7b6f7b19e8fa516bcd0670dfae84";
      fetchSubmodules = false;
      sha256 = "sha256-cYaHI19ctmfPSNr4UgT7p1GSEVMKZUlHJ4Gn33A0KR8=";
    };
    date = "2023-01-09";
  };
  taffybar = {
    pname = "taffybar";
    version = "253c10fc2af08d3d9eab9ca2362f4dce05c58554";
    src = fetchFromGitHub {
      owner = "taffybar";
      repo = "taffybar";
      rev = "253c10fc2af08d3d9eab9ca2362f4dce05c58554";
      fetchSubmodules = false;
      sha256 = "sha256-52epXu0VDlNA6yZ3JTsgbbD/1YCPX2s3Lpaz3Lk7lsA=";
    };
    date = "2022-12-25";
  };
  tailwindcss-intellisense = {
    pname = "tailwindcss-intellisense";
    version = "7235aeab48c5cfcf5a142b36ca2c7b91cb1864f8";
    src = fetchFromGitHub {
      owner = "tailwindlabs";
      repo = "tailwindcss-intellisense";
      rev = "7235aeab48c5cfcf5a142b36ca2c7b91cb1864f8";
      fetchSubmodules = false;
      sha256 = "sha256-6PLeZhRI67xN30zb2/2HNQU3qDw5lCKxukEnl6c3ejM=";
    };
    date = "2023-01-16";
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
  zix = {
    pname = "zix";
    version = "1521f6628ee43deb09eb9c6d36a8a4efe8f7567c";
    src = fetchFromGitHub {
      owner = "drobilla";
      repo = "zix";
      rev = "1521f6628ee43deb09eb9c6d36a8a4efe8f7567c";
      fetchSubmodules = false;
      sha256 = "sha256-9eSXLJXgCGTVqaIlpBeVcWshRzaQKeze1W1HL4xYpEc=";
    };
    date = "2023-01-14";
  };
  zmusic = {
    pname = "zmusic";
    version = "1.1.3";
    src = fetchFromGitHub {
      owner = "ZDoom";
      repo = "ZMusic";
      rev = "1.1.3";
      fetchSubmodules = false;
      sha256 = "sha256-wrNWfTIbNU/S2qFObUSkb6qyaceh+Y7Loxqudl86+W4=";
    };
  };
  zrythm = {
    pname = "zrythm";
    version = "199df15d7a713153f1c5bb9868e12e2326bfbec6";
    src = fetchgit {
      url = "https://git.sr.ht/~alextee/zrythm";
      rev = "199df15d7a713153f1c5bb9868e12e2326bfbec6";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-OymW0ai73zfGaLToizNXUEwp2rx4oPALR8nK6Ht73gg=";
    };
    date = "2023-01-18";
  };
}
