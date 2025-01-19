{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.ircam-vamp-plugins-bin) pname version src;

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
    unzip
  ];

  buildInputs = with pkgs; [
    stdenv.cc.cc.lib
  ];

  buildPhase = ''
    mkdir -p $out/lib/vamp
    cp *.so *.cat $out/lib/vamp
  '';

  meta = with pkgs.lib; {
    description = "A package containing Vamp plug-ins developed at Ircam";
    homepage = "https://github.com/Ircam-Partiels/ircam-vamp-plugins";
    license = licenses.unfree;
    platforms = ["x86_64-linux"];
    sourceProvenance = [sourceTypes.binaryNativeCode];
  };
}
