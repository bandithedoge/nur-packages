{
  sources,

  lib,
  stdenv,

  juceCmakeHook,
}:
stdenv.mkDerivation {
  inherit (sources.roomreverb) pname src;
  version = lib.removePrefix "v" sources.roomreverb.version;

  nativeBuildInputs = [
    juceCmakeHook
  ];

  meta = with lib; {
    description = "Room Reverb is a mono/stereo to stereo algorithmic reverb audio plugin with many presets that lets you add reverberation to your recordings in your DAW";
    homepage = "https://github.com/cvde/RoomReverb";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
