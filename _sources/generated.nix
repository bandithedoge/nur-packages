# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  basiliskii-bin = {
    pname = "basiliskii-bin";
    version = "2023-06-11";
    src = fetchurl {
      url = "https://github.com/Korkman/macemu-appimage-builder/releases/download/2023-06-11/BasiliskII-x86_64.AppImage";
      sha256 = "sha256-LoYORhfPgcaExXlH2FVVnq1noKszMcUWPhh4GFQinI4=";
    };
  };
  bling = {
    pname = "bling";
    version = "401985a327797cf146d95789f83421beeda8a27e";
    src = fetchFromGitHub {
      owner = "blingcorp";
      repo = "bling";
      rev = "401985a327797cf146d95789f83421beeda8a27e";
      fetchSubmodules = false;
      sha256 = "sha256-emJz0RuySe4ysIcgFQyABajsH642336asOiVpf3MLqA=";
    };
    date = "2023-05-22";
  };
  cardinal = {
    pname = "cardinal";
    version = "391d44f7d31c819e9a0739e19d3b9115b0a374e9";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "Cardinal";
      rev = "391d44f7d31c819e9a0739e19d3b9115b0a374e9";
      fetchSubmodules = true;
      sha256 = "sha256-UQZPcm0TkOj3rsTFLRdqhiNGlIPs982CaG7jR7ThpsQ=";
    };
    date = "2023-07-08";
  };
  carla = {
    pname = "carla";
    version = "604416bf33bcf16410e43009f6d94b86dd41afcd";
    src = fetchFromGitHub {
      owner = "falkTX";
      repo = "Carla";
      rev = "604416bf33bcf16410e43009f6d94b86dd41afcd";
      fetchSubmodules = false;
      sha256 = "sha256-7XoFJ1QwDOSa2XFyDE2J9XB+iDKICKDE2GUvDnF8DGQ=";
    };
    date = "2023-07-09";
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
    version = "74abea7c706420e644f71e4f99aab78b1057e133";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "74abea7c706420e644f71e4f99aab78b1057e133";
      fetchSubmodules = false;
      sha256 = "sha256-whQX5KA5oxBjLdIg1m58ykZwfw7TWde20hbTjgZXPnw=";
    };
    date = "2023-06-27";
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
  ildaeil = {
    pname = "ildaeil";
    version = "843a330eef80419cab9e3188da86d939546db1b6";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "Ildaeil";
      rev = "843a330eef80419cab9e3188da86d939546db1b6";
      fetchSubmodules = true;
      sha256 = "sha256-+k3e48lLw9WUNSfCI3dKTJVpkdu9Atusdj7BEDPQWGY=";
    };
    date = "2023-07-06";
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
    version = "19cccbf8988a67ff2e1fab14341230b220e4e5c8";
    src = fetchFromGitHub {
      owner = "kmonad";
      repo = "kmonad";
      rev = "19cccbf8988a67ff2e1fab14341230b220e4e5c8";
      fetchSubmodules = false;
      sha256 = "sha256-o8oo0tuRR6eYhh4IYnNaeQ810RdIeF9JJQdJHuzRN3U=";
    };
    date = "2023-07-09";
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
  macemu = {
    pname = "macemu";
    version = "51fc1905c4a3608795604e0942320afb873be47d";
    src = fetchFromGitHub {
      owner = "kanjitalk755";
      repo = "macemu";
      rev = "51fc1905c4a3608795604e0942320afb873be47d";
      fetchSubmodules = false;
      sha256 = "sha256-GgS7NvCDXZWjTqvZnGr2cRFuIs6ejGB+QxwbZEPTFaE=";
    };
    date = "2023-06-20";
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
    version = "2023-06-11";
    src = fetchurl {
      url = "https://github.com/Korkman/macemu-appimage-builder/releases/download/2023-06-11/SheepShaver-x86_64.AppImage";
      sha256 = "sha256-8ayEFZ+aGYLv/CTcQnAlWXdDSzg97IULoyeU41j4Cg8=";
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
    version = "741995d09da1264da669d69c6c26fe4575c5d4ba";
    src = fetchFromGitHub {
      owner = "taffybar";
      repo = "taffybar";
      rev = "741995d09da1264da669d69c6c26fe4575c5d4ba";
      fetchSubmodules = false;
      sha256 = "sha256-JvoCkRmKzdJwoHL+m29W845eJmp4bRdlYiqUabHvzhY=";
    };
    date = "2023-05-31";
  };
  tailwindcss-intellisense = {
    pname = "tailwindcss-intellisense";
    version = "a6c19d7cb49fe7de40d86c3157fdeb445ee5c16c";
    src = fetchFromGitHub {
      owner = "tailwindlabs";
      repo = "tailwindcss-intellisense";
      rev = "a6c19d7cb49fe7de40d86c3157fdeb445ee5c16c";
      fetchSubmodules = false;
      sha256 = "sha256-R0xx2SPLHICNUsn6Dx2LwQ7tZCs8I7R05+8FFGagc9M=";
    };
    date = "2023-06-27";
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
    version = "a5c18d52a5351430d370084f25aaf7d166f7afd5";
    src = fetchFromGitHub {
      owner = "drobilla";
      repo = "zix";
      rev = "a5c18d52a5351430d370084f25aaf7d166f7afd5";
      fetchSubmodules = false;
      sha256 = "sha256-WUhq8oQGGYTwXB8gCW0M15UprA7Yhq159Qf/BhUHwwo=";
    };
    date = "2023-05-29";
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
    version = "1bc89335ca42b83ce759fd4cd0fd518e43b7983d";
    src = fetchgit {
      url = "https://git.sr.ht/~alextee/zrythm";
      rev = "1bc89335ca42b83ce759fd4cd0fd518e43b7983d";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-ziyLEH5yZSVDn6qPeGDQXfbZjXZxUnQiigrq8pvddFI=";
    };
    date = "2023-06-11";
  };
}
