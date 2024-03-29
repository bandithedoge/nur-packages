# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  osirus-clap = {
    pname = "osirus-clap";
    version = "1.3.6";
    src = fetchurl {
      url = "https://futurenoize.com/dsp56300/builds/master/DSP56300Emu-1.3.6-Linux_x86_64-Osirus-CLAP.deb";
      sha256 = "sha256-TdOuqLXboAVTieNKKIRYkP7tGxjqODiVp7vCZjDkSX4=";
    };
  };
  osirus-test-console = {
    pname = "osirus-test-console";
    version = "1.3.6";
    src = fetchurl {
      url = "https://futurenoize.com/dsp56300/builds/master/DSP56300Emu-1.3.6-Linux_x86_64-OsirusTestConsole.deb";
      sha256 = "sha256-56E8MZgQWXgpmnWlcoykD6XEnWet1dCY/eLhFRE7MWg=";
    };
  };
  osirus-vst2 = {
    pname = "osirus-vst2";
    version = "1.3.6";
    src = fetchurl {
      url = "https://futurenoize.com/dsp56300/builds/master/DSP56300Emu-1.3.6-Linux_x86_64-Osirus-VST2.deb";
      sha256 = "sha256-5UYNk91iIFy/Bc68okjPe4emqeDA+jtdIS0PJVeuNmw=";
    };
  };
  osirus-vst3 = {
    pname = "osirus-vst3";
    version = "1.3.6";
    src = fetchurl {
      url = "https://futurenoize.com/dsp56300/builds/master/DSP56300Emu-1.3.6-Linux_x86_64-Osirus-VST3.deb";
      sha256 = "sha256-JvzANnM1exWsl1YXNI2sL3H4vRcxQsPW/i2n6FVIClk=";
    };
  };
  osirusfx-clap = {
    pname = "osirusfx-clap";
    version = "1.3.6";
    src = fetchurl {
      url = "https://futurenoize.com/dsp56300/builds/master/DSP56300Emu-1.3.6-Linux_x86_64-OsirusFX-CLAP.deb";
      sha256 = "sha256-ER/Tnf+lzoM9eHQvvDlxJRaPa/QUvbBCgcmznB/Zh0s=";
    };
  };
  osirusfx-vst2 = {
    pname = "osirusfx-vst2";
    version = "1.3.6";
    src = fetchurl {
      url = "https://futurenoize.com/dsp56300/builds/master/DSP56300Emu-1.3.6-Linux_x86_64-OsirusFX-VST2.deb";
      sha256 = "sha256-dpgbXm8iUN82/gjhAAqeN+ObUQqIQ3l79jrFYoE8YQc=";
    };
  };
  osirusfx-vst3 = {
    pname = "osirusfx-vst3";
    version = "1.3.6";
    src = fetchurl {
      url = "https://futurenoize.com/dsp56300/builds/master/DSP56300Emu-1.3.6-Linux_x86_64-OsirusFX-VST3.deb";
      sha256 = "sha256-6CIO4BffTX775kxeSssLUjDXsKZrg/vxxGUameWQJgE=";
    };
  };
}
