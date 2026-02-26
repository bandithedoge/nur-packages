{
  sources,

  lib,

  buildNpmPackage,
  cairo,
  importNpmLock,
  nodejs_22,
  pango,
  pixman,
  pkg-config,
}:
let
  nodejs' = nodejs_22;
in
buildNpmPackage {
  inherit (sources.sable) pname src;
  version = sources.sable.date;

  nodejs = nodejs';

  npmDeps = importNpmLock {
    package = lib.importJSON sources.sable.extract."package.json";
    packageLock = lib.importJSON sources.sable.extract."package-lock.json";
  };

  npmConfigHook = importNpmLock.hooks.npmConfigHook.override { nodejs = nodejs'; };

  nativeBuildInputs = [
    pkg-config
  ];

  buildInputs = [
    pixman
    cairo
    pango
  ];

  installPhase = ''
    runHook preInstall

    cp -r dist $out

    runHook postInstall
  '';

  meta = with lib; {
    description = "Yet another matrix client but better";
    homepage = "https://github.com/7w1/sable";
    license = licenses.agpl3Plus;
    platforms = platforms.all;
  };
}
