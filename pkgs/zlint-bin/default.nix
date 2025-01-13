{
  pkgs,
  sources,
  ...
}: let
  source = sources."zlint-bin-${pkgs.stdenv.targetPlatform.system}";
in
  pkgs.stdenv.mkDerivation {
    pname = "zlint-bin";
    inherit (source) version src;
    dontUnpack = true;

    buildPhase = ''
      mkdir -p $out/bin
      cp $src $out/bin/zlint
      chmod +x $out/bin/zlint
    '';

    meta = with pkgs.lib; {
      description = "A linter for the Zig programming language";
      homepage = "https://github.com/DonIsaac/zlint";
      license = licenses.mit;
      platforms = ["x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin"];
    };
  }
