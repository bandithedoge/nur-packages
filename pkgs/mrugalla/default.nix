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

      meta =
        (with pkgs.lib; {
          license = licenses.gpl3Plus;
          platforms = platforms.linux;
        })
        // meta;
    };
in
{
  absorb = mkMrugalla {
    source = sources.absorb;
    jucerFile = "Project.jucer";
    meta = {
      description = "Sidechain plugin that mixes up the texture of the colliding input signals";
      homepage = "github.com/Mrugalla/Absorb";
    };
  };

  allhaas = mkMrugalla {
    source = sources.allhaas;
    jucerFile = "ALLHaas.jucer";
    meta = {
      description = "Stereo widening tool that uses a lot of allpass filters";
      homepage = "https://github.com/Mrugalla/ALLHaas";
    };
  };

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

  nelorbit = mkMrugalla {
    source = sources.nelorbit;
    jucerFile = "NELOrbit.jucer";
    meta = {
      description = "VST3 plugin where gravitating planets cause chorus modulation";
      homepage = "https://github.com/Mrugalla/NELOrbit";
      broken = true;
    };
  };

  slew-over = mkMrugalla {
    source = sources.slew-over;
    jucerFile = "Slew Over.jucer";
    meta = {
      description = "Simple slew limiter with oversampling";
      homepage = "https://github.com/Mrugalla/Slew-Over";
    };
  };
}
