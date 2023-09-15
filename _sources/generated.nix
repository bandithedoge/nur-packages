# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  basiliskii-bin = {
    pname = "basiliskii-bin";
    version = "2023-09-11";
    src = fetchurl {
      url = "https://github.com/Korkman/macemu-appimage-builder/releases/download/2023-09-11/BasiliskII-x86_64.AppImage";
      sha256 = "sha256-kdr7y/2Xvmm52Cfbfg/2KqCXPENDQC+Cf/Sc1iUNI+w=";
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
    version = "0d89a881211edbfd682180411e6be535e2f710e8";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "Cardinal";
      rev = "0d89a881211edbfd682180411e6be535e2f710e8";
      fetchSubmodules = true;
      sha256 = "sha256-nmwmMFtiV+ZfcQ9yM06Z5fLZkxjvhJ/5F7AZi5f/pyU=";
    };
    date = "2023-09-14";
  };
  carla-git = {
    pname = "carla-git";
    version = "9317df59709ae646f6e08a1e2c9834b4a0325101";
    src = fetchFromGitHub {
      owner = "falkTX";
      repo = "Carla";
      rev = "9317df59709ae646f6e08a1e2c9834b4a0325101";
      fetchSubmodules = false;
      sha256 = "sha256-zDTZyPFK8rpO4l1LNZSXjIo75o6VKWNqqB/D0b67250=";
    };
    date = "2023-09-13";
  };
  dmenu-flexipatch = {
    pname = "dmenu-flexipatch";
    version = "690436ef27ba260a407b0997eae0eb3bc6af6f71";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dmenu-flexipatch";
      rev = "690436ef27ba260a407b0997eae0eb3bc6af6f71";
      fetchSubmodules = false;
      sha256 = "sha256-j7Px+rtvN63xeiAXXkw8T9g3zGbbDTU2m4ijandX9UA=";
    };
    date = "2023-06-15";
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
    version = "7849eaa08b71d359c939b946598716539b4ba1d7";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "7849eaa08b71d359c939b946598716539b4ba1d7";
      fetchSubmodules = false;
      sha256 = "sha256-gTXK5smGdF9oRHPetpwnKL4KWgtjNUCY8LKb0U7x3Z8=";
    };
    date = "2023-08-24";
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
    version = "2b4999c0c4dd8720e09abc9db6df93d605aee524";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "Ildaeil";
      rev = "2b4999c0c4dd8720e09abc9db6df93d605aee524";
      fetchSubmodules = true;
      sha256 = "sha256-EJSO+xB4HyEk2rg49bG6ZQHyX2UxEMu8n30jY7zJB98=";
    };
    date = "2023-08-27";
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
    version = "a05e93c62ca2c25cc81d76d9cf36880fe0bf183a";
    src = fetchFromGitHub {
      owner = "kmonad";
      repo = "kmonad";
      rev = "a05e93c62ca2c25cc81d76d9cf36880fe0bf183a";
      fetchSubmodules = false;
      sha256 = "sha256-aLAMpvbQPLkpjJDUWYTYRmEclAQTo+IVzqPQYOfmxfw=";
    };
    date = "2023-08-12";
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
    version = "9a7751f1a2b2db75fbebbeef850832921e7d2a7a";
    src = fetchFromGitHub {
      owner = "kanjitalk755";
      repo = "macemu";
      rev = "9a7751f1a2b2db75fbebbeef850832921e7d2a7a";
      fetchSubmodules = false;
      sha256 = "sha256-zDHZ5B9PUQMXQIe560CChqi1sD6E6wMHzEScYoY3DNQ=";
    };
    date = "2023-09-13";
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
    version = "2023-09-11";
    src = fetchurl {
      url = "https://github.com/Korkman/macemu-appimage-builder/releases/download/2023-09-11/SheepShaver-x86_64.AppImage";
      sha256 = "sha256-EUrjT+vWXTip/pmCSm0fyG5bP7o2pEgUEkYTdWRm9OY=";
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
    version = "1c03f10db9d52c3b9417eeff2e81d0a370280834";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "1c03f10db9d52c3b9417eeff2e81d0a370280834";
      fetchSubmodules = false;
      sha256 = "sha256-W1kHL7FsA9V+EYz7NgFpnGucEQ31CgM4hChzcVxSA2o=";
    };
    date = "2023-09-12";
  };
  taffybar = {
    pname = "taffybar";
    version = "067e0bff51e470ebffc4e9fc749656745461ce73";
    src = fetchFromGitHub {
      owner = "taffybar";
      repo = "taffybar";
      rev = "067e0bff51e470ebffc4e9fc749656745461ce73";
      fetchSubmodules = false;
      sha256 = "sha256-m73WjXb6o0r4iPhBUUPrRUpToe9giRJZe4Xu3yfWfwQ=";
    };
    date = "2023-09-08";
  };
  tailwindcss-intellisense = {
    pname = "tailwindcss-intellisense";
    version = "4bf3af2f9af5093ce4fdc8dd7464c5e7d5e78779";
    src = fetchFromGitHub {
      owner = "tailwindlabs";
      repo = "tailwindcss-intellisense";
      rev = "4bf3af2f9af5093ce4fdc8dd7464c5e7d5e78779";
      fetchSubmodules = false;
      sha256 = "sha256-fN2BF+Yy0/qwRglW9271EnFURjZJmmg0atAotZIAlnA=";
    };
    date = "2023-09-04";
  };
  tree-sitter-hypr = {
    pname = "tree-sitter-hypr";
    version = "0e19dd13a3751d2e00285917c5620eb79f470ac5";
    src = fetchFromGitHub {
      owner = "luckasRanarison";
      repo = "tree-sitter-hypr";
      rev = "0e19dd13a3751d2e00285917c5620eb79f470ac5";
      fetchSubmodules = false;
      sha256 = "sha256-Xb4U64d3ey+iUsefHXjG5PX2pfXjBnyIvC0tvXFx6js=";
    };
    date = "2023-09-02";
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
    version = "3d880e00f3a0d7129b642002c3fb51ddbb56ac96";
    src = fetchFromGitHub {
      owner = "drobilla";
      repo = "zix";
      rev = "3d880e00f3a0d7129b642002c3fb51ddbb56ac96";
      fetchSubmodules = false;
      sha256 = "sha256-sINwShGUA/OsXl+/polRjIMo6+Es6+0/Cp3OwZzItVY=";
    };
    date = "2023-08-23";
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
