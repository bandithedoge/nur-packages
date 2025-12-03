{
  sources,

  lib,
  stdenv,

  juceCmakeHook,
}:
stdenv.mkDerivation {
  inherit (sources.perceptomap) pname src;
  version = lib.removePrefix "v" sources.perceptomap.version;

  nativeBuildInputs = [
    juceCmakeHook
  ];

  cmakeFlags = [ "-DFETCHCONTENT_SOURCE_DIR_JUCE=${sources.juce.src}" ];

  meta = with lib; {
    description = "From frequencies to feeling";
    homepage = "https://github.com/hqrrr/PerceptoMap";
    license = licenses.agpl3Plus;
    platforms = platforms.linux;
  };
}
