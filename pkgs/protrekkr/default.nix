{
  pkgs,
  sources,
  ...
}:
let
  icon = pkgs.fetchurl {
    url = "https://raw.githubusercontent.com/falkTX/protrekkr/refs/heads/master/defaultlogo.png";
    hash = "sha256-4IGInSZ4lBtETHi3pLu06m7TGpQiBgiLZM3QftA7ngk=";
  };
in
pkgs.stdenv.mkDerivation {
  inherit (sources.protrekkr) pname src;
  version = pkgs.lib.removePrefix "v" sources.protrekkr.version;

  nativeBuildInputs = with pkgs; [
    copyDesktopItems
    makeWrapper
  ];

  buildInputs = with pkgs; [
    SDL
    alsa-lib
    jack1
    libGL
  ];

  enableParallelBuilding = true;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/{bin,share}

    mkdir $out/share/protrekkr
    cp -r \
      release/distrib/instruments \
      release/distrib/license.txt \
      release/distrib/modules \
      release/distrib/presets \
      release/distrib/ptk_linux \
      release/distrib/reverbs \
      release/distrib/skins \
      $out/share/protrekkr

    mkdir -p $out/share/pixmaps
    cp ${icon} $out/share/pixmaps/protrekkr.png

    makeWrapper $out/share/protrekkr/ptk_linux $out/bin/protrekkr --chdir $out/share/protrekkr

    runHook postInstall
  '';

  makefile = "makefile.linux";

  desktopItems = [
    (pkgs.makeDesktopItem {
      name = "protrekkr";
      exec = "protrekkr %u";
      desktopName = "ProTrekkr";
      categories = [ "AudioVideo" ];
    })
  ];

  hardeningDisable = [ "format" ];

  meta = with pkgs.lib; {
    description = "A fork of ProTrekkr, now with linux JACK Audio support";
    homepage = "https://github.com/falkTX/protrekkr";
    license = licenses.bsd3;
    platforms = platforms.linux;
  };
}
