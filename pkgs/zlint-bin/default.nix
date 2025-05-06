{
  pkgs,
  sources,
  ...
}: let
  source = sources."zlint-bin-${pkgs.stdenv.targetPlatform.system}";
in
  pkgs.stdenv.mkDerivation {
    pname = "zlint-bin";
    version = pkgs.lib.removePrefix "v" source.version;
    inherit (source) src;

    dontUnpack = true;

    buildPhase = ''
      runHook preBuild

      mkdir -p $out/bin
      cp $src $out/bin/zlint
      chmod +x $out/bin/zlint

      runHook postBuild
    '';

    meta = with pkgs.lib; {
      description = "A linter for the Zig programming language";
      homepage = "https://github.com/DonIsaac/zlint";
      license = licenses.mit;
      platforms = ["x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin"];
      sourceProvenance = [sourceTypes.binaryNativeCode];
    };
  }
