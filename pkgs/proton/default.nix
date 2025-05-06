{
  pkgs,
  sources,
  ...
}: let
  mkProton = {
    source,
    meta,
    version ? source.version,
  }:
    pkgs.stdenvNoCC.mkDerivation {
      inherit (source) pname src;
      inherit version;

      outputs = [
        "out"
        "steamcompattool"
      ];

      buildPhase = ''
        runHook preBuild

        mkdir -p $out/share/steam/compatibilitytools.d/$pname
        cp -r * $out/share/steam/compatibilitytools.d/$pname
        ln -s $out/share/steam/compatibilitytools.d/$pname $steamcompattool

        runHook postBuild
      '';

      meta = with pkgs.lib;
        {
          license = licenses.bsd3;
          platforms = ["x86_64-linux"];
          sourceProvenance = [sourceTypes.binaryNativeCode];
        }
        // meta;
    };
in {
  cachyos = mkProton rec {
    source = sources.proton-cachyos;
    version = pkgs.lib.removePrefix "cachyos-" source.version;
    meta = {
      description = "A compatibility tool for Steam Play based on Wine and additional components, experimental branch with extra CachyOS flavour";
      homepage = "https://github.com/CachyOS/proton-cachyos";
    };
  };
}
