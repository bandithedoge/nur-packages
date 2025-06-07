{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.mod-desktop-bin) pname version src;

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
  ];

  buildInputs = with pkgs; [
    alsa-lib
    dbus
    glib
    libuuid
    qt5.qtbase
    stdenv.cc.cc.lib
  ];

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/libexec
    cp -r * $out/libexec

    runHook postBuild
  '';

  dontWrapQtApps = true;

  meta = with pkgs.lib; {
    description = "MOD Audio for the desktop";
    homepage = "https://mod.audio/desktop/";
    license = licenses.agpl3Plus;
    platforms = [ "x86_64-linux" ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
