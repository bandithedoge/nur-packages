{
  sources,

  lib,
  stdenv,

  xorg,
}:
stdenv.mkDerivation {
  inherit (sources.dwm-flexipatch) src pname;
  version = sources.dwm-flexipatch.date;

  buildInputs = [
    xorg.libX11
    xorg.libXinerama
    xorg.libXft
  ];

  prePatch = ''
    sed -i "s@/usr/local@$out@" config.mk
  '';

  enableParallelBuilding = true;

  meta = with lib; {
    description = "A dwm build with preprocessor directives to decide which patches to include during build time";
    homepage = "https://github.com/bakkeby/dwm-flexipatch";
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
