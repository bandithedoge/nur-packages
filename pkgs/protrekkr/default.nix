{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.protrekkr) pname src;
  version = sources.protrekkr.date;

  nativeBuildInputs = with pkgs; [
    copyDesktopItems
    makeWrapper
  ];

  buildInputs = with pkgs; [
    SDL
    alsa-lib
    jack1
  ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/{bin,share}

    mkdir $out/share/protrekkr
    cp -r \
      release/distrib/history.txt \
      release/distrib/instruments \
      release/distrib/license.txt \
      release/distrib/modules \
      release/distrib/presets \
      release/distrib/ptk_linux \
      release/distrib/reverbs \
      release/distrib/skins \
      $out/share/protrekkr

    mkdir $out/share/pixmaps
    cp defaultlogo.png $out/share/pixmaps/protrekkr.png

    makeWrapper $out/share/protrekkr/ptk_linux $out/bin/protrekkr --chdir $out/share/protrekkr

    runHook postInstall
  '';

  makefile = "makefile.linux";

  enableParallelBuilding = true;

  desktopItems = [
    (pkgs.makeDesktopItem {
      name = "protrekkr";
      exec = "protrekkr %u";
      desktopName = "ProTrekkr";
      categories = ["AudioVideo"];
    })
  ];

  NIX_CFLAGS_COMPILE = [
    "-Wno-format-security"
  ];

  meta = with pkgs.lib; {
    description = "A fork of ProTrekkr, now with linux JACK Audio support";
    homepage = "https://github.com/falkTX/protrekkr";
    license = licenses.bsd3;
    platforms = platforms.linux;
  };
}
