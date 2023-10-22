# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  basiliskii-bin = {
    pname = "basiliskii-bin";
    version = "2023-10-11";
    src = fetchurl {
      url = "https://github.com/Korkman/macemu-appimage-builder/releases/download/2023-10-11/BasiliskII-x86_64.AppImage";
      sha256 = "sha256-c1zXphmzsvc6OzpKfbbwQvQjr+ICYV/f+w7bJvZQazY=";
    };
  };
  bling = {
    pname = "bling";
    version = "1f6bd0d5ef150a1801d20c69437ceff61d65fac5";
    src = fetchFromGitHub {
      owner = "blingcorp";
      repo = "bling";
      rev = "1f6bd0d5ef150a1801d20c69437ceff61d65fac5";
      fetchSubmodules = false;
      sha256 = "sha256-0D2ck1qiA1ydLax45utJw1RhZZwhqg4KRoqgDFz4Gsg=";
    };
    date = "2023-09-03";
  };
  cardinal = {
    pname = "cardinal";
    version = "3a88af1112f1bcf8e6b8a038e6e53f00e136c077";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "Cardinal";
      rev = "3a88af1112f1bcf8e6b8a038e6e53f00e136c077";
      fetchSubmodules = true;
      sha256 = "sha256-0gp1aJuOE5Vy+1+WE1Ivc2ULP/rPxn0e29Vg7x1Kn7s=";
    };
    date = "2023-10-21";
  };
  carla-git = {
    pname = "carla-git";
    version = "ade014c97194486692c260b7cc09b04a92e58305";
    src = fetchFromGitHub {
      owner = "falkTX";
      repo = "Carla";
      rev = "ade014c97194486692c260b7cc09b04a92e58305";
      fetchSubmodules = false;
      sha256 = "sha256-eaJJfgjHwbmFYmyL3Ii5XUf5PZTZZmrXmuX3g8f1Qr8=";
    };
    date = "2023-10-12";
  };
  dmenu-flexipatch = {
    pname = "dmenu-flexipatch";
    version = "6bd3860e4b84c7e2701ca3ab86d9c11355c47ebc";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dmenu-flexipatch";
      rev = "6bd3860e4b84c7e2701ca3ab86d9c11355c47ebc";
      fetchSubmodules = false;
      sha256 = "sha256-ZNe3RNxj/riRQw0mQ0OcWRKq4TzyumIUWT6uZxCOJI8=";
    };
    date = "2023-10-02";
  };
  dpf-plugins = {
    pname = "dpf-plugins";
    version = "v1.7";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "DPF-Plugins";
      rev = "v1.7";
      fetchSubmodules = false;
      sha256 = "sha256-768DlGZrD2vNoHAuVh3SxQHCIT4l44qORGWajo4bTiA=";
    };
  };
  dwm-flexipatch = {
    pname = "dwm-flexipatch";
    version = "d807d3da3e1bfed2e79fee5938a10e934be9b4b2";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "d807d3da3e1bfed2e79fee5938a10e934be9b4b2";
      fetchSubmodules = false;
      sha256 = "sha256-EAikXATMCBYQj8GLABhgj2b7v/1dXwje+3kxjeyce2I=";
    };
    date = "2023-10-03";
  };
  fennel-language-server = {
    pname = "fennel-language-server";
    version = "59005549ca1191bf2aa364391e6bf2371889b4f8";
    src = fetchFromGitHub {
      owner = "rydesun";
      repo = "fennel-language-server";
      rev = "59005549ca1191bf2aa364391e6bf2371889b4f8";
      fetchSubmodules = false;
      sha256 = "sha256-pp1+lquYRFZLHvU9ArkdLY/kBsfaHoZ9x8wAbWpApck=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./fennel-language-server-59005549ca1191bf2aa364391e6bf2371889b4f8/Cargo.lock;
      outputHashes = {
      };
    };
    date = "2023-06-29";
  };
  gtk-4_13_0 = {
    pname = "gtk-4_13_0";
    version = "4.13.0";
    src = fetchFromGitHub {
      owner = "GNOME";
      repo = "gtk";
      rev = "4.13.0";
      fetchSubmodules = false;
      sha256 = "sha256-SiL+/wfpeIUF2sQpGN1nWVn/mna+m3UxfORAFq/8fl0=";
    };
  };
  ildaeil = {
    pname = "ildaeil";
    version = "0044a9cca7435953d746ccbfaad27aa98e590d96";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "Ildaeil";
      rev = "0044a9cca7435953d746ccbfaad27aa98e590d96";
      fetchSubmodules = true;
      sha256 = "sha256-A+2qLqGST/ZSll6Y5GTIj7dLNGQ4/966/5kiNJyi9uY=";
    };
    date = "2023-10-07";
  };
  keepmenu = {
    pname = "keepmenu";
    version = "3524c763dbd211a790a0b90d6c86d3e316191ce7";
    src = fetchFromGitHub {
      owner = "firecat53";
      repo = "keepmenu";
      rev = "3524c763dbd211a790a0b90d6c86d3e316191ce7";
      fetchSubmodules = false;
      sha256 = "sha256-OsUPff34d1OIb6cY+Ma4Nbh1w63RLA3mgqjrlQdFJw0=";
    };
    date = "2023-09-09";
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
    version = "a1aea16c7a3239c0a3d7522b09edb1d6988bae02";
    src = fetchFromGitHub {
      owner = "kmonad";
      repo = "kmonad";
      rev = "a1aea16c7a3239c0a3d7522b09edb1d6988bae02";
      fetchSubmodules = false;
      sha256 = "sha256-hh5a82fbujCOitFjbzClCMZ/XZQeFsdOHxZWCXXv1i4=";
    };
    date = "2023-10-17";
  };
  libadwaita-1_4 = {
    pname = "libadwaita-1_4";
    version = "1.4.rc";
    src = fetchFromGitHub {
      owner = "GNOME";
      repo = "libadwaita";
      rev = "1.4.rc";
      fetchSubmodules = false;
      sha256 = "sha256-VJV5kLoDXTPXb3gXz0iANmrfo+wiR4a59Z2tcjL5+/8=";
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
    version = "b143b383cc80d51825e2b609a03bfd64d0e99a22";
    src = fetchFromGitHub {
      owner = "luakit";
      repo = "luakit";
      rev = "b143b383cc80d51825e2b609a03bfd64d0e99a22";
      fetchSubmodules = false;
      sha256 = "sha256-HkDWng+XdyN3LkX3ejSVqJKZJpe9qgabNqTN1d7ryng=";
    };
    date = "2023-08-03";
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
  macemu = {
    pname = "macemu";
    version = "19308135c3c60afebbb478184036e734e646a918";
    src = fetchFromGitHub {
      owner = "kanjitalk755";
      repo = "macemu";
      rev = "19308135c3c60afebbb478184036e734e646a918";
      fetchSubmodules = false;
      sha256 = "sha256-6dHXDgMVDrmlkArOQ2tRlhgWIOM95WvB9iUTcJ5rzpM=";
    };
    date = "2023-10-18";
  };
  raze = {
    pname = "raze";
    version = "1.7.1";
    src = fetchFromGitHub {
      owner = "ZDoom";
      repo = "Raze";
      rev = "1.7.1";
      fetchSubmodules = false;
      sha256 = "sha256-8e8F18kYLmEvQF0ZSpgih8hMYfcaZ0otrh26rkju9b4=";
    };
  };
  sheepshaver-bin = {
    pname = "sheepshaver-bin";
    version = "2023-10-11";
    src = fetchurl {
      url = "https://github.com/Korkman/macemu-appimage-builder/releases/download/2023-10-11/SheepShaver-x86_64.AppImage";
      sha256 = "sha256-DpezDr9h0NBZrr3I2Htqov1oWYu7PWkfwR8kO56uqf0=";
    };
  };
  slock-flexipatch = {
    pname = "slock-flexipatch";
    version = "316de8856f9f25685f6f1c4e94dbf76e4f64c06b";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "slock-flexipatch";
      rev = "316de8856f9f25685f6f1c4e94dbf76e4f64c06b";
      fetchSubmodules = false;
      sha256 = "sha256-jsAfkd2Xtzp4zKwY0bExPhVtcs+OeBdGJA29SPC04jk=";
    };
    date = "2023-10-06";
  };
  st-flexipatch = {
    pname = "st-flexipatch";
    version = "1af2184c87b929a84828eab2f1f0c4f810ef17dc";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "1af2184c87b929a84828eab2f1f0c4f810ef17dc";
      fetchSubmodules = false;
      sha256 = "sha256-2j/ISaaw5VNQxOo/dZfy7U5YLsZAEyI609ufyOb4ZZA=";
    };
    date = "2023-10-08";
  };
  taffybar = {
    pname = "taffybar";
    version = "46eba89c2a4d4ffefe42c3ee4506d1b74c8e61fd";
    src = fetchFromGitHub {
      owner = "taffybar";
      repo = "taffybar";
      rev = "46eba89c2a4d4ffefe42c3ee4506d1b74c8e61fd";
      fetchSubmodules = false;
      sha256 = "sha256-Q19F91yVQviqxgY+FkvEwtX2vcw414eVtK8erim0NrU=";
    };
    date = "2023-10-06";
  };
  tailwindcss-intellisense = {
    pname = "tailwindcss-intellisense";
    version = "3cd88c8abdf99bb77296265251bf938295481c9b";
    src = fetchFromGitHub {
      owner = "tailwindlabs";
      repo = "tailwindcss-intellisense";
      rev = "3cd88c8abdf99bb77296265251bf938295481c9b";
      fetchSubmodules = false;
      sha256 = "sha256-8nJtbQJDjlZHVWWIsgkJA91UXAaTNnlhMoMqwXWjJ2Y=";
    };
    date = "2023-10-20";
  };
  tree-sitter-hypr = {
    pname = "tree-sitter-hypr";
    version = "90b3ddf8a85b5ea3d9dc4920fddb16182a192e14";
    src = fetchFromGitHub {
      owner = "luckasRanarison";
      repo = "tree-sitter-hypr";
      rev = "90b3ddf8a85b5ea3d9dc4920fddb16182a192e14";
      fetchSubmodules = false;
      sha256 = "sha256-ErFs2eCC0eZEyDldrTUj4JJ0Eu+exDHNQx4g8WXh/UQ=";
    };
    date = "2023-10-01";
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
  zix-git = {
    pname = "zix-git";
    version = "76191313416a1170f89d8cbd6a652e98796dd9d2";
    src = fetchFromGitHub {
      owner = "drobilla";
      repo = "zix";
      rev = "76191313416a1170f89d8cbd6a652e98796dd9d2";
      fetchSubmodules = false;
      sha256 = "sha256-TGjcbKjWBWHrHqNTF9U18kLOwa37fjWhvo3IrKLklBs=";
    };
    date = "2023-09-23";
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
    version = "228c7ad526b354c9ba01bed71028b9cb422f73f0";
    src = fetchgit {
      url = "https://git.sr.ht/~alextee/zrythm";
      rev = "228c7ad526b354c9ba01bed71028b9cb422f73f0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-G7U9GI5B3o2MuS6saZk+yeu1YBdY2iY1QGbksoDpY58=";
    };
    date = "2023-09-02";
  };
}
