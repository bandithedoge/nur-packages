{
  sources,

  lib,
  stdenv,

  juceCmakeHook,
}:
stdenv.mkDerivation {
  inherit (sources.jdrummer) pname src;
  version = sources.jdrummer.date;

  nativeBuildInputs = [ juceCmakeHook ];

  cmakeFlags = [
    "-DFETCHCONTENT_SOURCE_DIR_JUCE=${sources.juce.src}"
  ];

  meta = {
    description = "Open source drum plugin that acts as an alternative to EZDrummer3";
    homepage = "https://github.com/jmantra/jdrummer";
    license = lib.licenses.gpl3Plus;
    platforms = lib.platforms.linux;
    mainProgram = "jdrummer";
    maintainers = [ lib.maintainers.bandithedoge ];
  };
}
