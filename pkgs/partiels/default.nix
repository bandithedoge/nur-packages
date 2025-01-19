{
  pkgs,
  sources,
  utils,
  ...
}: let
  vamp-plugin-sdk' = pkgs.runCommand "vamp-plugin-sdk" {nativeBuildInputs = with pkgs; [git];} ''
    cp -r --no-preserve all ${sources.vamp-plugin-sdk.src} vamp-plugin-sdk
    cd vamp-plugin-sdk
    git apply "${sources.partiels.src}/BinaryData/Resource/vamp-plugin-sdk-src.patch"
    cd ..
    cp -r vamp-plugin-sdk $out
  '';
in
  pkgs.stdenv.mkDerivation rec {
    inherit (sources.partiels) pname version src;

    nativeBuildInputs = with pkgs; [
      cmake
      copyDesktopItems
      git
      makeWrapper
      pkg-config
    ];

    buildInputs = with pkgs;
      [
        libjack2
      ]
      ++ utils.juce.commonBuildInputs;

    installPhase = ''
      mkdir -p $out/{bin,lib/vamp}
      cp -r Partiels $out/libexec

      makeWrapper $out/libexec/Partiels $out/bin/Partiels \
        --prefix LD_LIBRARY_PATH : ${pkgs.lib.makeLibraryPath buildInputs}

      ln -s $out/libexec/PlugIns/* $out/lib/vamp

      mkdir -p $out/share/icons/hicolor/512x512/apps
      ln -s $out/libexec/icon.png $out/share/icons/hicolor/512x512/apps/partiels.png
    '';

    cmakeFlags = [
      "-DFETCHCONTENT_SOURCE_DIR_VAMP-PLUGIN-SDK=${vamp-plugin-sdk'}"
    ];

    desktopItems = [
      (pkgs.makeDesktopItem {
        name = "Partiels";
        exec = "Partiels";
        desktopName = "Partiels";
        categories = ["Audio"];
        icon = "partiels";
      })
    ];

    NIX_CFLAGS_COMPILE = ["-Wno-error=format-security"];

    meta = with pkgs.lib; {
      description = "Partiels is an audio analysis application that allow you to explore the content and characteristics of sounds";
      homepage = "https://github.com/Ircam-Partiels/Partiels";
      license = licenses.gpl3Only;
      platforms = platforms.linux;
    };
  }
