{
  sources,

  lib,
  stdenv,

  alsa-lib,
  autoPatchelfHook,
  freetype,
  libGL,
  runCommand,
  unzip,
}:
stdenv.mkDerivation {
  inherit (sources.quetzalcoatl-bin) pname version src;
  sourceRoot = ".";

  nativeBuildInputs = [
    autoPatchelfHook
  ];

  buildInputs = [
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
        runCommand source.pname
          {
            inherit (source) src;
            nativeBuildInputs = [ unzip ];
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

  meta = with lib; {
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
