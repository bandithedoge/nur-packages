{
  sources,

  lib,

  buildNpmPackage,
  importNpmLock,
  libsecret,
  pkg-config,
}:
buildNpmPackage {
  inherit (sources.some-sass-language-server) pname src;
  version = lib.removePrefix "some-sass-language-server@" sources.some-sass-language-server.version;

  npmDeps = importNpmLock {
    package = lib.importJSON sources.some-sass-language-server.extract."package.json";
    packageLock = lib.importJSON sources.some-sass-language-server.extract."package-lock.json";
    npmRoot = ".";
  };
  inherit (importNpmLock) npmConfigHook;
  npmBuildScript = "build:production";
  npmRebuildFlags = [ "--ignore-scripts" ];

  nativeBuildInputs = [ pkg-config ];
  buildInputs = [ libsecret ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/{libexec,bin}
    cp -r packages/language-server $out/libexec/some-sass-language-server
    ln -s $out/libexec/some-sass-language-server/bin/some-sass-language-server $out/bin

    runHook postInstall
  '';

  meta = with lib; {
    description = "Language server with improved support for SCSS, Sass indented and SassDoc. Workspace awareness and full support for Sass modules";
    homepage = "https://wkillerud.github.io/some-sass/";
    license = licenses.mit;
    platforms = platforms.all;
  };
}
