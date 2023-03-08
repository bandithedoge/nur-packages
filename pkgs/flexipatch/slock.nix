{
  pkgs,
  sources,
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.slock-flexipatch) pname src;
  version = sources.slock-flexipatch.date;

  buildInputs = with pkgs; [
    libxcrypt
    xorg.libX11
    xorg.libXext
    xorg.libXrandr
  ];

  installFlags = ["PREFIX=$(out)"];

  postPatch = "sed -i '/chmod u+s/d' Makefile";

  enableParallelBuilding = true;

  makeFlags = ["CC:=$(CC)"];

  meta = with pkgs.lib; {
    description = "An slock build with preprocessor directives to decide which patches to include during build time";
    homepage = "https://github.com/bakkeby/slock-flexipatch";
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
