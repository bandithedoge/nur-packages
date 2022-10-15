# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
}: {
  bling = {
    pname = "bling";
    version = "70c894e58bb88dea55e9799ad373fdaea309da9e";
    src = fetchFromGitHub {
      owner = "blingcorp";
      repo = "bling";
      rev = "70c894e58bb88dea55e9799ad373fdaea309da9e";
      fetchSubmodules = false;
      sha256 = "sha256-sUUMgdAmXAB/2ocwoo2OTZlWRbSRLdKi1oZB20qRNWU=";
    };
    date = "2022-07-23";
  };
  cardinal = {
    pname = "cardinal";
    version = "373ff58766f1f72e60284b260b241a08f7eb2249";
    src = fetchFromGitHub {
      owner = "DISTRHO";
      repo = "Cardinal";
      rev = "373ff58766f1f72e60284b260b241a08f7eb2249";
      fetchSubmodules = true;
      sha256 = "sha256-LJvyX1YJ8SBj50RPF9LoxNwLzTscLhqlKly4uBFjCfs=";
    };
    date = "2022-10-15";
  };
  carla = {
    pname = "carla";
    version = "dc9b58b4cb148f5f38654defe19b1fe2556acc21";
    src = fetchFromGitHub {
      owner = "falkTX";
      repo = "Carla";
      rev = "dc9b58b4cb148f5f38654defe19b1fe2556acc21";
      fetchSubmodules = false;
      sha256 = "sha256-IfTZRQuEjI8qQr7GwQQuCrWcFtfYjNn6h2SbcuUeHR8=";
    };
    date = "2022-10-14";
  };
  dmenu-flexipatch = {
    pname = "dmenu-flexipatch";
    version = "b4aad57ce4232433c6381cb0c927e68817ea6586";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dmenu-flexipatch";
      rev = "b4aad57ce4232433c6381cb0c927e68817ea6586";
      fetchSubmodules = false;
      sha256 = "sha256-Dj2EYuKQP3acZzuS+zJdG0eRmyMLWM2fwaJWZTmLKsM=";
    };
    date = "2022-10-06";
  };
  dwm-flexipatch = {
    pname = "dwm-flexipatch";
    version = "b732821f7b5458ae1bb2476da5441942ec8fa398";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "b732821f7b5458ae1bb2476da5441942ec8fa398";
      fetchSubmodules = false;
      sha256 = "sha256-nWdrPQSYHJJ/qZmszwub7jJPhKNZWecn0cp1urgACUI=";
    };
    date = "2022-10-13";
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
    version = "e9c7693f387835bdf2d1ada85c2ba0b813686ebb";
    src = fetchFromGitHub {
      owner = "luakit";
      repo = "luakit";
      rev = "e9c7693f387835bdf2d1ada85c2ba0b813686ebb";
      fetchSubmodules = false;
      sha256 = "sha256-rN9yBWCBzLp6l2x0DMXL4VBfaHbMXJAEnzC8Cp5Y5ew=";
    };
    date = "2022-10-05";
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
    version = "1.5.0";
    src = fetchFromGitHub {
      owner = "ZDoom";
      repo = "Raze";
      rev = "1.5.0";
      fetchSubmodules = false;
      sha256 = "sha256-b7RFC90v5Kj2rTWdil2A8OLF6wicA08X87uS6nb4l5c=";
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
    version = "13f2b133eb71b5af106c2930c1fad2531a8347a9";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "13f2b133eb71b5af106c2930c1fad2531a8347a9";
      fetchSubmodules = false;
      sha256 = "sha256-n2yCs2msbzW0zzriEx74FThgMH2cb6mCHO3hAQeSb8U=";
    };
    date = "2022-10-06";
  };
  taffybar = {
    pname = "taffybar";
    version = "4129b2aed4349752dd9a1b47676d457883d95490";
    src = fetchFromGitHub {
      owner = "taffybar";
      repo = "taffybar";
      rev = "4129b2aed4349752dd9a1b47676d457883d95490";
      fetchSubmodules = false;
      sha256 = "sha256-nlClc8iPZhgn+95CmGuKMsueHdruPpYWBtUCD9fgDig=";
    };
    date = "2022-10-10";
  };
  tailwindcss-intellisense = {
    pname = "tailwindcss-intellisense";
    version = "c9acd0d12493cee03aeddb942a8ace1fbe674556";
    src = fetchFromGitHub {
      owner = "tailwindlabs";
      repo = "tailwindcss-intellisense";
      rev = "c9acd0d12493cee03aeddb942a8ace1fbe674556";
      fetchSubmodules = false;
      sha256 = "sha256-UuMz+B9Gn9Yd6Tuow1uG/24q+MMsNDqDA1JxYRQ/jso=";
    };
    date = "2022-10-13";
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
    version = "98fdc7a3e012c177f23eeee7de7076339860ca3e";
    src = fetchFromGitHub {
      owner = "drobilla";
      repo = "zix";
      rev = "98fdc7a3e012c177f23eeee7de7076339860ca3e";
      fetchSubmodules = false;
      sha256 = "sha256-mTv0kNJtei48K+/QGfleHw9RXX39AWaUTvvUP/14X0I=";
    };
    date = "2022-10-07";
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
    version = "7793b5153ba8395043a34839e894000f8edaa526";
    src = fetchgit {
      url = "https://git.sr.ht/~alextee/zrythm";
      rev = "7793b5153ba8395043a34839e894000f8edaa526";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-RiVWGd64esVB68C09zaH11e2lBI+lEYnE3o66UFR5xg=";
    };
    date = "2022-10-15";
  };
}
