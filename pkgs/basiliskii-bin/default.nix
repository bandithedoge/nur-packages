{
  sources,

  appimageTools,
  lib,
}:
appimageTools.wrapType2 {
  inherit (sources.basiliskii-bin) pname version src;

  extraPkgs =
    pkgs: with pkgs; [
      libthai
    ];

  meta = with lib; {
    description = "68k Macintosh emulator";
    homepage = "https://basilisk.cebix.net/";
    license = licenses.gpl2;
    platforms = [ "x86_64-linux" ];
  };
}
