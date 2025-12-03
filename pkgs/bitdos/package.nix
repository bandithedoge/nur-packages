{
  sources,

  lib,
  stdenv,

  projucer,
}:
stdenv.mkDerivation {
  inherit (sources.bitdos) pname version src;

  nativeBuildInputs = [
    projucer
  ];

  jucerFile = "BitDos.jucer";

  meta = with lib; {
    description = "A bit-inverting industrial distortion plugin with VST3/LV2";
    homepage = "https://github.com/astriiddev/BitDOS-VST";
    license = licenses.agpl3Plus;
    platforms = [ "x86_64-linux" ];
  };
}
