# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  basiliskii-bin = {
    pname = "basiliskii-bin";
    version = "2023-09-01";
    src = fetchurl {
      url = "https://github.com/Korkman/macemu-appimage-builder/releases/download/2023-09-01/BasiliskII-x86_64.AppImage";
      sha256 = "sha256-tQutNQJ1qiDho4AIL8J8jLKE8k7B6t7h1rc0DP6cN5w=";
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
    version = "97f6eb6a1cc6d7e579d6fc68a7fec66b96d6d04d";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "Cardinal";
      rev = "97f6eb6a1cc6d7e579d6fc68a7fec66b96d6d04d";
      fetchSubmodules = true;
      sha256 = "sha256-Gwv5tck3x4fUoap30wavhdr7T09T+ZDsjbza0nD3qVk=";
    };
    date = "2023-09-04";
  };
  carla-git = {
    pname = "carla-git";
    version = "a627caf17f141009602a76e99cbfc93f5b7d1455";
    src = fetchFromGitHub {
      owner = "falkTX";
      repo = "Carla";
      rev = "a627caf17f141009602a76e99cbfc93f5b7d1455";
      fetchSubmodules = false;
      sha256 = "sha256-ly2Xu55rx69wZ/V7czY7V3aep8og7+a3zZohdaGy58M=";
    };
    date = "2023-09-03";
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
    version = "438e89fecc960c4e0aeeb24cfeffc0cfde1c868c";
    src = fetchFromGitHub {
      owner = "firecat53";
      repo = "keepmenu";
      rev = "438e89fecc960c4e0aeeb24cfeffc0cfde1c868c";
      fetchSubmodules = false;
      sha256 = "sha256-KEkt17oXMdHg+5e3z3QyTvMf/vntrgmPWTU6E1IPlPk=";
    };
    date = "2023-09-01";
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
    version = "d2c2647e3a43ce5c49bec131e8e0e5487a954c8f";
    src = fetchFromGitHub {
      owner = "kanjitalk755";
      repo = "macemu";
      rev = "d2c2647e3a43ce5c49bec131e8e0e5487a954c8f";
      fetchSubmodules = false;
      sha256 = "sha256-z2rCksk7TsJDvEah4tQ3dpMiF98F/e+v+SKOZa0Gcd0=";
    };
    date = "2023-08-23";
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
    version = "2023-09-01";
    src = fetchurl {
      url = "https://github.com/Korkman/macemu-appimage-builder/releases/download/2023-09-01/SheepShaver-x86_64.AppImage";
      sha256 = "sha256-rVZYygwRz3u3H5pireiCdTE6fJn2RgM9fsGsO0XWsz4=";
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
    version = "f097dbd0798d36f817b29f9881e1989f8864843d";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "f097dbd0798d36f817b29f9881e1989f8864843d";
      fetchSubmodules = false;
      sha256 = "sha256-/icnipnpK5Yi0IgSkVWkP4TRMB9gV1p6m/c+mbmkewo=";
    };
    date = "2023-07-05";
  };
  taffybar = {
    pname = "taffybar";
    version = "f0ae7af7ee412c22e3c9e0745e51f98bbd1a2d10";
    src = fetchFromGitHub {
      owner = "taffybar";
      repo = "taffybar";
      rev = "f0ae7af7ee412c22e3c9e0745e51f98bbd1a2d10";
      fetchSubmodules = false;
      sha256 = "sha256-RPlS6bLWBXWo3fO/p4rT0qfVY+ZTXF1j9TRIzGo7rSE=";
    };
    date = "2023-09-01";
  };
  tailwindcss-intellisense = {
    pname = "tailwindcss-intellisense";
    version = "1cc8e62da32895c892624a9f631cd7d16973aa81";
    src = fetchFromGitHub {
      owner = "tailwindlabs";
      repo = "tailwindcss-intellisense";
      rev = "1cc8e62da32895c892624a9f631cd7d16973aa81";
      fetchSubmodules = false;
      sha256 = "sha256-fNdeGrZGugiBCFk3aoEAII+KiDBJQWk9ZI8OWo+A2Uc=";
    };
    date = "2023-08-31";
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
