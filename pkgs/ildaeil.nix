{
  pkgs,
  sources,
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.ildaeil) pname src;
  version = sources.ildaeil.date;

  nativeBuildInputs = with pkgs; [
    pkg-config
  ];

  buildInputs = with pkgs; [
    libGL
    xorg.libX11
    xorg.libXcursor
    xorg.libXext
  ];

  prePatch = ''
    patchShebangs ./dpf/utils/generate-ttl.sh
  '';

  makeFlags = ["PREFIX=$(out)"];
}
