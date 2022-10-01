# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
}: {
  dmenu-flexipatch = {
    pname = "dmenu-flexipatch";
    version = "4be3af6f6ce016f409f8f7d553a9f670b2a7854a";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dmenu-flexipatch";
      rev = "4be3af6f6ce016f409f8f7d553a9f670b2a7854a";
      fetchSubmodules = false;
      sha256 = "sha256-/lUbOHwyEtOcMtnL5ypVcMGPScNdPbEeVGKXD7b7jZE=";
    };
    date = "2022-09-26";
  };
  dwm-flexipatch = {
    pname = "dwm-flexipatch";
    version = "1ac17a493705d150cb4b92ca7e33fb98b51de4c7";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "1ac17a493705d150cb4b92ca7e33fb98b51de4c7";
      fetchSubmodules = false;
      sha256 = "sha256-nXHHRkgW1rLqXIpLAj+cDgt1tjfKKJkJnOAVODZ+ods=";
    };
    date = "2022-09-26";
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
  libadwaita = {
    pname = "libadwaita";
    version = "ab94d7c0589b8894ccca33ae75e945dd1e3a2c73";
    src = fetchgit {
      url = "https://gitlab.gnome.org/GNOME/libadwaita";
      rev = "ab94d7c0589b8894ccca33ae75e945dd1e3a2c73";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-XJkIlAfO451Iu+YZ1kB86ou73svuEPH2DG2HYNYD1Sg=";
    };
    date = "2022-09-28";
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
    version = "c9253bde3fa5a64261953d1b196c57fabf9f8561";
    src = fetchFromGitHub {
      owner = "stefano-m";
      repo = "lua-dbus_proxy";
      rev = "c9253bde3fa5a64261953d1b196c57fabf9f8561";
      fetchSubmodules = false;
      sha256 = "sha256-mf49sgSO3zkeDDyezSr9BmvX2Fah8Hc59eLREP5G+p4=";
    };
    date = "2022-07-30";
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
    date = "2022-08-31";
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
    date = "2022-06-03";
  };
  st-flexipatch = {
    pname = "st-flexipatch";
    version = "2d74e49c4faf4d9a6a5901e22cab8df1f0c5f4c5";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "2d74e49c4faf4d9a6a5901e22cab8df1f0c5f4c5";
      fetchSubmodules = false;
      sha256 = "sha256-IpwfS27ftWXw+A3nEBsDxqviuamix/JyQCjotJ7UMFI=";
    };
    date = "2022-09-24";
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
    date = "2022-05-30";
  };
  tailwindcss-intellisense = {
    pname = "tailwindcss-intellisense";
    version = "72569b00ddef5154a714b778f6f3d717fb91a2fd";
    src = fetchFromGitHub {
      owner = "tailwindlabs";
      repo = "tailwindcss-intellisense";
      rev = "72569b00ddef5154a714b778f6f3d717fb91a2fd";
      fetchSubmodules = false;
      sha256 = "sha256-Y9sZr8OeXy0RMNbX9yTLGZya61asmPrVTHQVA4TAQiQ=";
    };
    date = "2022-09-30";
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
    version = "a0293511f4d82d7cb800f568ff5c0d82be5c40c7";
    src = fetchFromGitHub {
      owner = "drobilla";
      repo = "zix";
      rev = "a0293511f4d82d7cb800f568ff5c0d82be5c40c7";
      fetchSubmodules = false;
      sha256 = "sha256-HxFIb/ux2YLVHrlgNOtxQsoQzCEPvAEG8UVXU2qN9Io=";
    };
    date = "2022-09-08";
  };
  zrythm = {
    pname = "zrythm";
    version = "fe01b5b7cc6ef42ac5186277e00958311ec23c5f";
    src = fetchgit {
      url = "https://git.sr.ht/~alextee/zrythm";
      rev = "fe01b5b7cc6ef42ac5186277e00958311ec23c5f";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-0Olw41MzbSMy8tqVELz8S/IOtnBYynoDJGHAwTQrLjk=";
    };
    date = "2022-10-01";
  };
}
