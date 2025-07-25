{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.misstrhortion) pname src;
  version = sources.misstrhortion.date;

  nativeBuildInputs = with pkgs; [
    cmake
    ninja
    pkg-config
  ];

  buildInputs = with pkgs; [
    libGL
    xorg.libX11
  ];

  meta = with pkgs.lib; {
    description = "DPF port of Misstortion";
    homepage = "https://github.com/bandithedoge/misstrhortion";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
