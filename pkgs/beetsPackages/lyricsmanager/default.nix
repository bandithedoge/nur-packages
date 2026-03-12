{
  sources,
  python3Packages,
  lib,
  beets,
}:
python3Packages.buildPythonApplication {
  inherit (sources.beets-lyricsmanager) pname src;
  version = lib.removePrefix "v" sources.beets-lyricsmanager.version;

  format = "setuptools";

  nativeBuildInputs = [ beets ];

  meta = with lib; {
    description = "Beets plugin for automatically managing lyrics files (.lrc) when importing music files and synchronizing lyrics files when moving songs";
    homepage = "https://github.com/zytx/beets-lyrics-manager";
    license = licenses.mit;
    inherit (beets.meta) platforms;
  };
}
