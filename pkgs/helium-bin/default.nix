{ pkgs, sources, ... }:
let
  source = if pkgs.stdenv.isAarch64 then sources.helium-bin-arm64 else sources.helium-bin-x86_64;
in
pkgs.stdenv.mkDerivation {
  pname = "helium-bin";
  inherit (source) version src;

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
  ];

  buildInputs = with pkgs; [
    alsa-lib
    at-spi2-atk
    cups
    expat
    gtk4
    libxkbcommon
    nspr
    nss
    qt6.qtbase
    qt6.qtwayland
    stdenv.cc.cc.lib
    systemd
    xorg.libX11
    xorg.libXcomposite
    xorg.libXdamage
    xorg.libXext
    xorg.libXext
    xorg.libXfixes
    xorg.libXrandr
    xorg.libxcb
  ];

  autoPatchelfIgnoreMissingDeps = [ "libQt5*.so.5" ];

  dontWrapQtApps = true;

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/{bin,libexec/helium}
    cp -r * $out/libexec/helium
    ln -s $out/libexec/helium/chrome $out/bin/helium

    patchelf --add-needed libEGL.so.1 $out/libexec/helium/lib*GL*
    rm $out/libexec/helium/libvulkan.so.1
    patchelf --add-needed libvulkan.so.1 $out/libexec/helium/lib*GL*

    runHook postBuild
  '';

  meta = with pkgs.lib; {
    description = "Private, fast, and honest web browser";
    homepage = "https://helium.computer/";
    license = with licenses; [
      gpl3Plus
      bsd3
    ];
    platforms = [
      "x86_64-linux"
      "aarch64-linux"
    ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
