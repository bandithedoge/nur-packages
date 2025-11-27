{
  sources,

  lib,
  stdenv,

  SDL2,
  alsa-lib,
  cmake,
  copyDesktopItems,
  dbus,
  fftw,
  freetype,
  glib,
  jansson,
  libGL,
  libarchive,
  liblo,
  libsamplerate,
  makeDesktopItem,
  mesa,
  pkg-config,
  python3,
  speexdsp,
  xorg,
}:
stdenv.mkDerivation {
  inherit (sources.cardinal) src pname;
  version = sources.cardinal.date;

  nativeBuildInputs = [
    cmake
    copyDesktopItems
    pkg-config
    python3
  ];

  dontUseCmakeConfigure = true;

  buildInputs = [
    SDL2
    alsa-lib
    dbus
    fftw
    freetype
    glib
    jansson
    libGL
    libarchive
    liblo
    libsamplerate
    mesa
    speexdsp
    xorg.libX11
    xorg.libXcursor
    xorg.libXext
    xorg.libXrandr
  ];

  prePatch = ''
    patchShebangs ./dpf/utils/generate-ttl.sh
  '';

  desktopItems = [
    (makeDesktopItem {
      name = "cardinal";
      exec = "Cardinal";
      desktopName = "Cardinal";
      categories = [
        "AudioVideo"
        "Audio"
      ];
    })
    (makeDesktopItem {
      name = "cardinal-native";
      exec = "CardinalNative";
      desktopName = "Cardinal (Native)";
      categories = [
        "AudioVideo"
        "Audio"
      ];
    })
  ];

  enableParallelBuilding = true;

  makeFlags = [
    "PREFIX=$(out)"
    "SYSDEPS=true"
  ];

  hardeningDisable = [ "format" ];

  meta = with lib; {
    description = "Virtual modular synthesizer plugin";
    homepage = "https://github.com/DISTRHO/Cardinal";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
