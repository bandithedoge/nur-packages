{
  pkgs,
  sources,
  ...
}:
let
  mkChainner =
    source:
    pkgs.stdenv.mkDerivation {
      inherit (source) pname version src;

      nativeBuildInputs = with pkgs; [
        copyDesktopItems
        makeWrapper
        unzip
      ];

      buildPhase = ''
        runHook preBuild

        mkdir -p $out/{bin,libexec,share/icons/hicolor/256x256/apps}
        cp -r * $out/libexec

        makeWrapper ${with pkgs; lib.getExe electron} $out/bin/chainner \
          --add-flags $out/libexec/resources/app \
          --set LD_LIBRARY_PATH ${
            with pkgs;
            lib.makeLibraryPath [
              libGL
              glib
            ]
          }

        rm $out/libexec/portable

        ln -s $out/libexec/resources/app/.vite/renderer/main_window/256x256.png $out/share/icons/hicolor/256x256/apps/chainner.png

        runHook postBuild
      '';

      desktopItems = with pkgs; [
        (makeDesktopItem {
          name = "chainner";
          desktopName = "chaiNNer";
          comment = "A flowchart-based image processing GUI";
          genericName = "Image Processing GUI";
          exec = "chainner %U";
          icon = "chainner";
          categories = [ "Graphics" ];
          mimeTypes = [ "application/json" ];
        })
      ];

      meta = with pkgs.lib; {
        description = "A node-based image processing GUI aimed at making chaining image processing tasks easy and customizable.";
        homepage = "https://chainner.app/";
        license = licenses.gpl3Plus;
        platforms = [ "x86_64-linux" ];
        sourceProvenance = [ sourceTypes.binaryBytecode ];
      };
    };
in
{
  nightly = mkChainner sources.chainner-bin-nightly;
  stable = mkChainner sources.chainner-bin-stable;
}
