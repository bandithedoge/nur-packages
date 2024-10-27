{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.panacea-bin) pname version src;

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
  ];

  buildInputs = with pkgs; [
    csound
    fontconfig
    freetype
    libGL
    stdenv.cc.cc.lib
  ];

  buildPhase = ''
    mkdir -p $out/lib/vst/Panacea

    cp Panacea.so Panacea.csd $out/lib/vst/Panacea
    cp -r img $out/lib/vst/Panacea
  '';

  meta = with pkgs.lib; {
    description = "Panacea is an autopan audio effect plugin with the possibility of humanization";
    homepage = "https://github.com/consint/Panacea";
    license = licenses.gpl3;
    platforms = ["x86_64-linux"];
  };
}