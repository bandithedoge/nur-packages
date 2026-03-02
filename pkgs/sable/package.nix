{
  sources,

  lib,

  buildNpmPackage,
  cairo,
  importNpmLock,
  pango,
  pixman,
  pkg-config,
}:
buildNpmPackage {
  inherit (sources.sable) pname src;
  version = sources.sable.date;

  npmDeps = importNpmLock {
    package = lib.importJSON sources.sable.extract."package.json";
    packageLock = lib.importJSON sources.sable.extract."package-lock.json";
  };

  inherit (importNpmLock) npmConfigHook;

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
