{
  sources,

  lib,
  stdenv,

  juceCmakeHook,
}:
stdenv.mkDerivation {
  inherit (sources.ultramaster-kr-106) pname src;
  version = lib.removePrefix "v" sources.ultramaster-kr-106.version;

  nativeBuildInputs = [ juceCmakeHook ];

  meta = with lib; {
    description = "Synthesizer plugin emulating the Roland Juno-6, Juno-60, and Juno-106, built with JUCE";
    homepage = "https://kayrock.org/kr106";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
