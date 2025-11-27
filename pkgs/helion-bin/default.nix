{
  sources,

  lib,
  stdenv,

  autoPatchelfHook,
  dotnetCorePackages,
  glib,
  icu,
  libGL,
  libdecor,
  libdrm,
  libgbm,
  libsndfile,
  libxkbcommon,
  makeWrapper,
  openal,
  openssl,
  unzip,
  wayland,
  xorg,
}:
stdenv.mkDerivation {
  inherit (sources.helion-bin) pname version src;
  sourceRoot = ".";

  nativeBuildInputs = [
    autoPatchelfHook
    unzip
    makeWrapper
  ];

  buildInputs = [
    glib
    libGL
    libdecor
    libdrm
    libgbm
    libsndfile
    libxkbcommon
    openal
    stdenv.cc.cc.lib
    wayland
    xorg.libX11
    xorg.libXScrnSaver
    xorg.libXcursor
    xorg.libXi
    xorg.libXinerama
    xorg.libXrandr
    xorg.libXxf86vm
    openssl
  ];

  runtimeDependencies = [
    icu
  ];

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/{bin,libexec}
    cp -r * $out/libexec

    makeWrapper $out/libexec/Helion $out/bin/Helion \
      --set DOTNET_ROOT ${dotnetCorePackages.dotnet_9.runtime}/share/dotnet

    patchelf $out/libexec/Helion \
      --add-needed libopenal.so.1 \
      --add-needed libGL.so \
      --add-needed libssl.so

    runHook postBuild
  '';

  meta = with lib; {
    description = "A modern fast paced Doom FPS engine";
    homepage = "https://github.com/Helion-Engine/Helion";
    license = licenses.gpl3Plus;
    platforms = [ "x86_64-linux" ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
