{
  lib,
  makeSetupHook,

  alsa-lib,
  cmake,
  curl-gnutls3,
  fontconfig,
  freetype,
  libGL,
  mold-wrapped,
  ninja,
  pkg-config,
  xorg,
  writableTmpDirAsHomeHook,
}:
let
  commonBuildInputs = [
    curl-gnutls3
    alsa-lib
    fontconfig
    freetype
    libGL
    xorg.libX11
    xorg.libXcursor
    xorg.libXext
    xorg.libXinerama
    xorg.libXrandr
  ];
in
makeSetupHook {
  name = "juce-cmake-hook";

  propagatedBuildInputs = [
    cmake
    mold-wrapped
    ninja
    pkg-config
    writableTmpDirAsHomeHook
  ];

  depsTargetTargetPropagated = commonBuildInputs;

  substitutions = {
    rpath = lib.makeLibraryPath commonBuildInputs;
  };

  passthru = { inherit commonBuildInputs; };

  meta.platforms = lib.platforms.linux;
} ./hook.sh
