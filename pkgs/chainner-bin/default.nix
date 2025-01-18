{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.chainner-bin) pname version src;

  nativeBuildInputs = with pkgs; [
    unzip
    makeWrapper
  ];

  buildPhase = ''
    mkdir -p $out/{bin,libexec,share/icons/hicolor/256x256/apps}
    cp -r * $out/libexec

    makeWrapper ${with pkgs; lib.getExe electron} $out/bin/chainner \
      --add-flags $out/libexec/resources/app \
      --set LD_LIBRARY_PATH ${with pkgs; lib.makeLibraryPath [libGL glib]}

    rm $out/libexec/portable

    ln -s $out/libexec/resources/app/.vite/renderer/main_window/256x256.png $out/share/icons/hicolor/256x256/apps/chainner.png
  '';

  meta = with pkgs.lib; {
    description = "A node-based image processing GUI aimed at making chaining image processing tasks easy and customizable.";
    homepage = "https://chainner.app/";
    license = licenses.gpl3Only;
    platforms = ["x86_64-linux"];
  };
}
