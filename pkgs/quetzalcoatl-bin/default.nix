{ pkgs, sources, ... }:
pkgs.stdenv.mkDerivation {
  inherit (sources.quetzalcoatl-bin) pname version src;

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
  ];

  buildInputs = with pkgs; [
    alsa-lib
    freetype
    libGL
    stdenv.cc.cc.lib
  ];

  outputs = [
    "out"
    "content"
  ];

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/lib/vst3
    cp -r Quetzalcoatl.vst3 $out/lib/vst3
    cp -r Quetzalcoatl $content

    runHook postBuild
  '';

  meta = with pkgs.lib; {
    description = "Sample player";
    longDescription = "Make sure to symlink (or copy the contents of) `quetzalcoatl-bin.content` to ~/.config/modularsamples/Quetzalcoatl";
    homepage = "https://github.com/publicsamples/Quetzalcoatl";
    license = licenses.gpl3Plus;
    platforms = [ "x86_64-linux" ];
  };
}
