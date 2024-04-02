{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.sgdboop-bin) pname version src;
  sourceRoot = ".";

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
  ];

  buildInputs = with pkgs; [
    curl
    gtk3
  ];

  buildPhase = ''
    mkdir -p $out/bin $out/lib
    cp SGDBoop $out/bin
    cp libiup.so $out/lib
  '';

  meta = with pkgs.lib; {
    description = "A program used for applying custom artwork to Steam, using SteamGridDB";
    homepage = "https://www.steamgriddb.com/boop";
    license = licenses.cc-by-nc-sa-40;
    platforms = ["x86_64-linux"];
  };
}
