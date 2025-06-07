{
  pkgs,
  sources,
  utils,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.mxtune-bin) pname src;
  version = pkgs.lib.removePrefix "v" sources.mxtune-bin.version;

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
    unzip
  ];

  buildInputs = utils.juce.commonBuildInputs;

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/lib/vst
    cp mx_tune.so $out/lib/vst

    runHook postInstall
  '';

  meta = with pkgs.lib; {
    description = "Pitch correction plugin for VST";
    homepage = "https://github.com/liuanlin-mx/MXTune";
    license = licenses.gpl3Plus;
    platforms = [ "x86_64-linux" ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
