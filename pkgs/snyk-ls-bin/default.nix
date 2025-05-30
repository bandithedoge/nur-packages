{
  pkgs,
  sources,
  ...
}:
let
  source = sources."snyk-ls-bin-${pkgs.stdenv.targetPlatform.system}";
in
pkgs.stdenv.mkDerivation {
  pname = "snyk-ls-bin";
  inherit (source) version src;

  dontUnpack = true;

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/bin
    cp $src $out/bin/snyk-ls
    chmod +x $out/bin/snyk-ls

    runHook postBuild
  '';

  meta = with pkgs.lib; {
    description = "Language Server used by IDEs as Snyk Backend for Frontends";
    homepage = "https://github.com/snyk/snyk-ls";
    license = licenses.asl20;
    platforms = [
      "aarch64-darwin"
      "aarch64-linux"
      "i686-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ];
    sourceProvenance = [ sourceTypes.binaryNativeCode ];
  };
}
