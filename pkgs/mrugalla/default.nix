{
  pkgs,
  sources,
  callPackage',
  ...
}:
let
  mkMrugalla =
    {
      source,
      jucerFile,
      meta ? { },
    }:
    pkgs.stdenv.mkDerivation {
      inherit (source) pname src;
      version = source.date;

      nativeBuildInputs = [
        (callPackage' ../projucer)
      ];

      inherit jucerFile;

      meta = (with pkgs.lib; {
        license = licenses.gpl3Plus;
        platforms = platforms.linux;
      }) // meta;
    };
in
{
  hammer-and-meiszel = mkMrugalla {
    source = sources.hammer-and-meiszel;
    jucerFile = "Projekt.jucer";
    meta = {
      description = "Keytracked polyphonic modal filter effect";
      homepage = "https://github.com/Mrugalla/Hammer-and-Meiszel";
    };
  };

  manta = mkMrugalla {
    source = sources.manta;
    jucerFile = "Project.jucer";
    meta = {
      description = "Resonator with extra steps";
      homepage = "https://github.com/Mrugalla/Manta";
    };
  };

  nel-19 = mkMrugalla {
    source = sources.nel-19;
    jucerFile = "NEL-19.jucer";
    meta = {
      description = "Open-source vibrato plugin with an extensive modulation system";
      homepage = "https://github.com/Mrugalla/NEL-19";
    };
  };
}
