{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.bitdos-bin) pname version src;

  sourceRoot = ".";

  nativeBuildInputs = with pkgs; [
    p7zip
    autoPatchelfHook
  ];

  buildInputs = with pkgs; [
    curlWithGnuTls
    freetype
    stdenv.cc.cc.lib
  ];

  buildPhase = ''
    mkdir -p $out/lib/{lv2,vst3}
    cp -r BitDOS.lv2 $out/lib/lv2
    cp -r BitDOS.vst3 $out/lib/vst3
  '';

  meta = with pkgs.lib; {
    description = "A bit-inverting industrial distortion plugin with VST3/LV2 ";
    homepage = "https://github.com/astriiddev/BitDOS-VST";
    license = licenses.agpl3Only;
    platforms = ["x86_64-linux"];
  };
}
