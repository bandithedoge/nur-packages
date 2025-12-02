{
  sources,

  lib,
  stdenv,

  juceCmakeHook,
}:
stdenv.mkDerivation {
  inherit (sources.hamburger) pname src;
  version = lib.removePrefix "v" sources.hamburger.version;

  nativeBuildInputs = [ juceCmakeHook ];

  cmakeFlags = [
    "-DFETCHCONTENT_SOURCE_DIR_JUCE=${sources.juce.src}"
    "-DFETCHCONTENT_SOURCE_DIR_CLAP-JUCE-EXTENSIONS=${sources.clap-juce-extensions.src}"
  ];

  meta = with lib; {
    description = "Distortion plugin with inbuilt dynamics controls and equalisation that can deliver both subtle tangy harmonics and absolute annilhilation and noise-wall-ification to any sound";
    homepage = "https://aviaryaudio.com/plugins/hamburgerv2";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
