{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.uhhyou) pname src;
  version = pkgs.lib.removePrefix "UhhyouPlugins-" sources.uhhyou.version;

  nativeBuildInputs = with pkgs; [
    cmake
    pkg-config
  ];

  buildInputs = with pkgs; [
    xorg.libX11
    freetype
    xorg.xcbutil
    xcb-util-cursor
    xorg.xcbutilkeysyms
    libxkbcommon
    gtkmm3
    sqlite
  ];

  postPatch = ''
    patchShebangs lib/vst3sdk/vstgui4/vstgui/uidescription/editing/createuidescdata.sh
  '';

  installPhase = ''
    mkdir -p $out/lib
    cp -r /build/source/build/VST3/Release $out/lib/vst3
  '';

  cmakeFlags = [
    "-DSMTG_PLUGIN_TARGET_USER_PATH=$out"
  ];

  meta = with pkgs.lib; {
    description = "Uhhyou Plugins VST 3 repository";
    homepage = "https://ryukau.github.io/VSTPlugins/";
    license = licenses.gpl3;
    platforms = platforms.linux;
  };
}
