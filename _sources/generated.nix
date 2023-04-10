# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  bling = {
    pname = "bling";
    version = "677917056d118d02feaa5c21ecf5a50375ef123d";
    src = fetchFromGitHub {
      owner = "blingcorp";
      repo = "bling";
      rev = "677917056d118d02feaa5c21ecf5a50375ef123d";
      fetchSubmodules = false;
      sha256 = "sha256-V3ZAWhDH2b1n3G3ZMpH1k9yZFQm1wsAfAX4+eKciOKk=";
    };
    date = "2023-03-07";
  };
  cardinal = {
    pname = "cardinal";
    version = "3f024a0d61dd0761d4143349d624c93a16ebb4cd";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "Cardinal";
      rev = "3f024a0d61dd0761d4143349d624c93a16ebb4cd";
      fetchSubmodules = true;
      sha256 = "sha256-6qBB3dRRkIVBR7jtHOjhvxza2EIs6yF/1KAzqNRP50Y=";
    };
    date = "2023-04-07";
  };
  carla = {
    pname = "carla";
    version = "56468b473205185bf120619c23b3d594513f4b7b";
    src = fetchFromGitHub {
      owner = "falkTX";
      repo = "Carla";
      rev = "56468b473205185bf120619c23b3d594513f4b7b";
      fetchSubmodules = false;
      sha256 = "sha256-APW2dqmYHWBW4SDEa6HTXBtWcWwJhvml5KwbQ6PTfpg=";
    };
    date = "2023-04-06";
  };
  dmenu-flexipatch = {
    pname = "dmenu-flexipatch";
    version = "25ea08edd1fb3c11799fc7da138ad016876ad12c";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dmenu-flexipatch";
      rev = "25ea08edd1fb3c11799fc7da138ad016876ad12c";
      fetchSubmodules = false;
      sha256 = "sha256-EcytzISJQsowcvn0r5gShFBeUs+VRueKHH9zgOlhd9M=";
    };
    date = "2023-04-07";
  };
  dpf-plugins = {
    pname = "dpf-plugins";
    version = "v1.6";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "DPF-Plugins";
      rev = "v1.6";
      fetchSubmodules = false;
      sha256 = "sha256-sdsOfEsLHiAZxq8lGVWOTi+0p2FBeeLzbX3OOTgj7QQ=";
    };
  };
  dwm-flexipatch = {
    pname = "dwm-flexipatch";
    version = "5fefbfee64fc0fa1ebe49f92979157ffa2c7c1ae";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "5fefbfee64fc0fa1ebe49f92979157ffa2c7c1ae";
      fetchSubmodules = false;
      sha256 = "sha256-DLalFR7yC/O6icV3jLu37n6agIkl5/W+ESPvfRkrLgE=";
    };
    date = "2023-04-09";
  };
  fennel-language-server = {
    pname = "fennel-language-server";
    version = "d0c65db2ef43fd56390db14c422983040b41dd9c";
    src = fetchFromGitHub {
      owner = "rydesun";
      repo = "fennel-language-server";
      rev = "d0c65db2ef43fd56390db14c422983040b41dd9c";
      fetchSubmodules = false;
      sha256 = "sha256-KU2MPmgHOS/WesBzCmEoHHXHoDWCyqjy49tmMmZw5BQ=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./fennel-language-server-d0c65db2ef43fd56390db14c422983040b41dd9c/Cargo.lock;
      outputHashes = {
      };
    };
    date = "2023-03-01";
  };
  ildaeil = {
    pname = "ildaeil";
    version = "b6f33ff1d741597c74923bb7253d72db5cab89f3";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "Ildaeil";
      rev = "b6f33ff1d741597c74923bb7253d72db5cab89f3";
      fetchSubmodules = true;
      sha256 = "sha256-CJUQhveFml21cXDxfTNhPk5p7P7CYUwf5gI9PpZ0M7s=";
    };
    date = "2023-03-05";
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
  kmonad = {
    pname = "kmonad";
    version = "a22e0bad9e76b01c7b9e56f193e07c615e82effa";
    src = fetchFromGitHub {
      owner = "kmonad";
      repo = "kmonad";
      rev = "a22e0bad9e76b01c7b9e56f193e07c615e82effa";
      fetchSubmodules = false;
      sha256 = "sha256-st3xFK6kgoeTwVQw/zKGc4HLaWSU4yrRyY82d7bfgYk=";
    };
    date = "2023-03-28";
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
    version = "858dc946b01487e6ba2475cb7a9bede34c17d134";
    src = fetchFromGitHub {
      owner = "luakit";
      repo = "luakit";
      rev = "858dc946b01487e6ba2475cb7a9bede34c17d134";
      fetchSubmodules = false;
      sha256 = "sha256-TKQvnavoofGtBo2aBJtZVZjrmm5Ln7vOgW9bAXjcpRM=";
    };
    date = "2023-01-29";
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
    version = "1.7.0";
    src = fetchFromGitHub {
      owner = "ZDoom";
      repo = "Raze";
      rev = "1.7.0";
      fetchSubmodules = false;
      sha256 = "sha256-JgZ/Nfwel03xYUE0iGu3BVLH61iAAxw7NpE8DVjW/v4=";
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
    version = "1343b29ee5e8a9d67607a4616f74386a2951e276";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "1343b29ee5e8a9d67607a4616f74386a2951e276";
      fetchSubmodules = false;
      sha256 = "sha256-cZcoBkgcG+MXVSmjupdmhEQv7j54rANbmMso6XnatEw=";
    };
    date = "2023-04-07";
  };
  taffybar = {
    pname = "taffybar";
    version = "5d1685f87ecbf283119110d002813d82f74342ea";
    src = fetchFromGitHub {
      owner = "taffybar";
      repo = "taffybar";
      rev = "5d1685f87ecbf283119110d002813d82f74342ea";
      fetchSubmodules = false;
      sha256 = "sha256-etRsa9KqU4xNLJ6DYWh6/vKtc9tAX7yGpQbc0SROeo8=";
    };
    date = "2023-03-11";
  };
  tailwindcss-intellisense = {
    pname = "tailwindcss-intellisense";
    version = "f3967a72adbac5c920a6f1884a5dfa6e3097b0bd";
    src = fetchFromGitHub {
      owner = "tailwindlabs";
      repo = "tailwindcss-intellisense";
      rev = "f3967a72adbac5c920a6f1884a5dfa6e3097b0bd";
      fetchSubmodules = false;
      sha256 = "sha256-PdorQ8p26b8o6N2DG4/x/zUjZ4GN4cNki1dmiltBDl8=";
    };
    date = "2023-03-31";
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
    version = "262d4a1522c38be0588746e874159da5c7bb457d";
    src = fetchFromGitHub {
      owner = "drobilla";
      repo = "zix";
      rev = "262d4a1522c38be0588746e874159da5c7bb457d";
      fetchSubmodules = false;
      sha256 = "sha256-3vuefgnirM4ksK3j9sjBHgOmx0JpL+6tCPb69/7jI00=";
    };
    date = "2023-02-13";
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
    version = "b2880210738faa0fec2add5ec9c1367222d3ce81";
    src = fetchgit {
      url = "https://git.sr.ht/~alextee/zrythm";
      rev = "b2880210738faa0fec2add5ec9c1367222d3ce81";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-CZ4WDe234NKfvD8o6/GU/1dCCYQ6S7QC6toykjSqNRY=";
    };
    date = "2023-04-09";
  };
}
