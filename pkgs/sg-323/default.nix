{
  sources,

  lib,
  stdenv,

  juceCmakeHook,
}:
stdenv.mkDerivation {
  inherit (sources.sg-323) pname version src;

  nativeBuildInputs = [ juceCmakeHook ];

  meta = with lib; {
    description = "Ursa Major Stargate 323 reverb emulation";
    homepage = "https://github.com/greyboxaudio/SG-323";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
