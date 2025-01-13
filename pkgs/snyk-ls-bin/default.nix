{
  pkgs,
  sources,
  ...
}: let
  source = sources."snyk-ls-bin-${pkgs.stdenv.targetPlatform.system}";
in
  pkgs.stdenv.mkDerivation {
    pname = "snyk-ls-bin";
    inherit (source) version src;

    dontUnpack = true;

    buildPhase = ''
      mkdir -p $out/bin
      cp $src $out/bin/snyk-ls
      chmod +x $out/bin/snyk-ls
    '';
  }
