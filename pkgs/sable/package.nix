{
  sources,

  lib,
  stdenvNoCC,
}:
stdenvNoCC.mkDerivation (finalAttrs: {
  inherit (sources.sable) pname version src;
  sourceRoot = ".";

  buildPhase = ''
    runHook preBuild

    for tarball in *.tar; do
      if tar -tf "$tarball" | grep app/index.html; then
        tar -xf "$tarball"
        cp -r app $out
        break
      fi
    done

    runHook postBuild
  '';

  meta = with lib; {
    description = "Yet another matrix client but better";
    homepage = "https://github.com/7w1/sable";
    license = licenses.agpl3Plus;
    platforms = platforms.all;
  };
})
