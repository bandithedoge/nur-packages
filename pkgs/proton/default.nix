{
  pkgs,
  sources,
  ...
}:
let
  mkProton = pkgs.makeOverridable (
    {
      source,
      meta,
      version ? source.version,
      steamDisplayName ? source.pname,
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
        substituteInPlace $steamcompattool/compatibilitytool.vdf \
          --replace-fail "${source.version}" "${steamDisplayName}"

        runHook postBuild
      '';

      meta =
        with pkgs.lib;
        {
          license = licenses.bsd3;
          platforms = [ "x86_64-linux" ];
          sourceProvenance = [ sourceTypes.binaryNativeCode ];
        }
        // meta;
    }
  );
in
{
  cachyos = mkProton rec {
    source = sources.proton-cachyos;
    version = pkgs.lib.removePrefix "cachyos-" source.version;
    meta = {
      description = "A compatibility tool for Steam Play based on Wine and additional components, experimental branch with extra CachyOS flavour";
      homepage = "https://github.com/CachyOS/proton-cachyos";
    };
  };

  ge = mkProton rec {
    source = sources.proton-ge;
    version = pkgs.lib.removePrefix "GE-Proton" source.version;
    meta = {
      description = "Compatibility tool for Steam Play based on Wine and additional components";
      homepage = "https://github.com/GloriousEggroll/proton-ge-custom";
    };
  };

  sarek = mkProton rec {
    source = sources.proton-sarek;
    version = pkgs.lib.removePrefix "Proton-Sarek" source.version;
    meta = {
      description = "Steam Play compatibility tool based on Wine and additional components, with a focus on older PCs";
      homepage = "https://github.com/pythonlover02/Proton-Sarek";
    };
  };

  sarek-async = mkProton rec {
    source = sources.proton-sarek-async;
    version = pkgs.lib.removePrefix "Proton-Sarek" source.version;
    meta = {
      description = "Steam Play compatibility tool based on Wine and additional components, with a focus on older PCs (with DXVK async)";
      homepage = "https://github.com/pythonlover02/Proton-Sarek";
    };
  };
}
