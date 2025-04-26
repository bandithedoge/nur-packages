{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.k-whooms) pname version src;

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
  ];

  buildInputs = with pkgs; [
    cairo
    expat
    freetype
    glib
    harfbuzz
    libxkbcommon
    pango
    stdenv.cc.cc.lib
    xcb-util-cursor
    xorg.libICE
    xorg.libSM
    xorg.libX11
    xorg.libXext
    xorg.libxcb
    xorg.xcbutilkeysyms
  ];

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/lib/vst3 $out/share/vst3
    cp -r K-Whooms.vst3 $out/lib/vst3
    cp -r presets $out/share/vst3

    runHook postBuild
  '';

  meta = with pkgs.lib; {
    description = "Get K-Whooms and squeeze the fattest sounds out of it with just a few turns of the controls";
    homepage = "https://www.hansen-audio.org/";
    license = licenses.unfree;
    platforms = ["x86_64-linux"];
    sourceProvenance = [sourceTypes.binaryNativeCode];
  };
}
