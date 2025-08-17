{ pkgs, sources, ... }:
pkgs.stdenv.mkDerivation {
  inherit (sources.quetzalcoatl-bin) pname version src;
  sourceRoot = ".";

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
  ];

  buildInputs = with pkgs; [
    alsa-lib
    freetype
    libGL
    stdenv.cc.cc.lib
  ];

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/lib/vst3
    cp -r Quetzalcoatl.vst3 $out/lib/vst3

    runHook postBuild
  '';

  passthru =
    let
      mkContent =
        source:
        pkgs.runCommandNoCC source.pname
          {
            inherit (source) src;
            nativeBuildInputs = with pkgs; [ unzip ];
          }
          ''
            unzip $src
            cp -r Quetzalcoatl $out
          '';
    in
    {
      samples = mkContent sources.quetzalcoatl-samples;
      presets = mkContent sources.quetzalcoatl-presets;
    };

  meta = with pkgs.lib; {
    description = "Sample player";
    longDescription = ''
      This derivation exports passthru attributes for required Quetzalcoatl content. Symlink (or copy the contents of)
      the following:
      - `quetzalcoatl-bin.samples` to `~/Music/modularsamples/Quetzalcoatl`
      - `quetzalcoatl-bin.presets` to `~/.config/modularsamples/Quetzalcoatl`
    '';
    homepage = "https://github.com/publicsamples/Quetzalcoatl";
    license = licenses.gpl3Plus;
    platforms = [ "x86_64-linux" ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
