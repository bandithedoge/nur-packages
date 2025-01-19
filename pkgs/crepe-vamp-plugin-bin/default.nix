{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.crepe-vamp-plugin-bin) pname version src;

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
  ];

  buildInputs = with pkgs; [
    stdenv.cc.cc.lib
  ];

  buildPhase = ''
    mkdir -p $out/lib/vamp
    cp ircamcrepe.* $out/lib/vamp
  '';

  meta = with pkgs.lib; {
    description = "The Crepe plugin is an implementation of the CREPE monophonic pitch tracker, based on a deep convolutional neural network operating directly on the time-domain waveform input, as a Vamp plugin";
    homepage = "https://github.com/Ircam-Partiels/crepe-vamp-plugin";
    license = licenses.mit;
    platforms = ["x86_64-linux"];
  };
}
