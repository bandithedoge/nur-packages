{
  fetchFromGitHub,
  lib,
  nix-update-script,
  stdenv,

  qt5,
  which,
  pkg-config,
  uutils-coreutils-noprefix,
  git,
  libjack2,
  libuuid,
  lrdf,
  libsndfile,
  libsamplerate,
  liblo,
  guile,
  dos2unix,
  libbfd,
  libiberty,
  boost,
  libsForQt5,
  cmake,
  libGLU,
  breakpointHook,
  speex,
  libvorbis,
  fftwFloat,
  fftw,
  libpthread-stubs,
  ladspa-header,
  vst2-sdk,
  libxrandr,
  alsa-lib,
  libxinerama,
  libxcursor,
  ninja,
  fetchpatch,
  ncurses,
}:
let
  qtwebkit = qt5.qtModule {
    pname = "qtwebkit";
    nativeBuildInputs = [
      cmake
      ninja
    ];
  };
in
stdenv.mkDerivation (finalAttrs: {
  pname = "radium";
  version = "7.5.78";
  src = fetchFromGitHub {
    owner = "kmatheussen";
    repo = "radium";
    rev = finalAttrs.version;
    hash = "sha256-v0XihAe0dRgAWlzRTufd6WZvdIwnl6fkfDoOnfsY3Nc=";
  };

  patches = [
    ./qt5-lib-path.patch
    (fetchpatch {
      url = "https://github.com/kmatheussen/radium/commit/a762f29b7f8e910c3034dfee878b4b13bb26df58.patch";
      hash = "sha256-fGhVVkkxG5QMLQH3DtN7uGyl1UU7lNJ1Ca1RyrB7BKs=";
    })
  ];

  nativeBuildInputs = [
    qt5.qtbase
    pkg-config
    uutils-coreutils-noprefix # arch
    git
    guile
    which
    dos2unix
    cmake
    breakpointHook
  ];

  buildInputs = [
    # qtwebkit
    qt5.qtx11extras
    libjack2
    libuuid
    lrdf
    fftwFloat
    libsndfile
    libsamplerate
    liblo
    libbfd
    libiberty
    boost
    libsForQt5.qscintilla
    libGLU
    speex
    libvorbis
    libpthread-stubs
    ladspa-header
    libxrandr
    alsa-lib
    libxinerama
    libxcursor
    qt5.qtsvg
  ];

  dontWrapQtApps = true;
  dontUseCmakeConfigure = true;

  buildPhase = ''
    runHook preBuild

    patchShebangs .
    substituteInPlace Makefile \
      --replace-fail "/usr/bin/env bash" "${stdenv.shell}"

    cd bin/packages
    PYTHONEXE_NOT_AVAILABLE_YET=1 ./build.sh
    cd ../..
    ./build_linux.sh -j `nproc`

    runHook postBuild
  '';

  hardeningDisable = [ "format" ];

  env = {
    # makefile
    SHELL = stdenv.shell;
    PREFIX = placeholder "out";
    BUILDTYPE = "RELEASE";
    CCC = lib.getExe' stdenv.cc "c++";
    CC = lib.getExe' stdenv.cc "cc";
    LINKER = lib.getExe' stdenv.cc "ld";
    RADIUM_VST2SDK_PATH = vst2-sdk;
    # WARNINGS_AS_ERRORS = 0;

    # configuration.sh
    RADIUM_USE_CLANG = if stdenv.cc.isClang then 1 else 0;
    INCLUDE_FAUSTDEV_BUT_NOT_LLVM = 1;
    # TODO: remove these
    USE_QSVGVIEWER = 1;
    INCLUDE_PDDEV = 0;

    # bin/packages
    CMAKE_POLICY_VERSION_MINIMUM = "3.5";
    RADIUM_BUILD_LIBXCB = 0;

    # build_python27.sh
    MY_CC = lib.getExe' stdenv.cc "cc";
    MY_CPP = lib.getExe' stdenv.cc "c++";
  };

  NIX_CFLAGS_COMPILE = [
    "-std=gnu17"
    "-Wno-error"
    "-Wno-implicit-function-declaration"
    "-Wno-int-conversion"
    "-D_DEFAULT_SOURCE"
    "-L${lib.getLib fftwFloat}/lib"
    "-L${lib.getLib fftw}/lib"
    "-I${lib.getInclude qt5.qttools}/include/QtUiTools"
    "-I${lib.getInclude qt5.qtsvg}/include"
    "-I${lib.getInclude qt5.qtsvg}/include/QtSvg"
    "-L${lib.getLib ncurses}/lib"
  ];

  passthru = {
    inherit qtwebkit;
    updateScript = nix-update-script { };
  };

  # meta = {
  #   description = "";
  #   homepage = "";
  #   license = null;
  #   platforms = [];
  #   sourceProvenance = [];
  #   mainProgram = "";
  #   maintainers = [ lib.maintainers.bandithedoge ];
  # };
})
