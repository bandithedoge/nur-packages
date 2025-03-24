# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  bassdrive = {
    pname = "bassdrive";
    version = "2.1.0";
    src = fetchurl {
      url = "https://www.tonelib.net/download/ToneLib-BassDrive-amd64.deb";
      sha256 = "sha256-Yqo3nbW6u8pp+oD3uCiqkU+rIv7TN0NHuxAdiC/Apyw=";
    };
  };
  easycomp = {
    pname = "easycomp";
    version = "2.2.1";
    src = fetchurl {
      url = "https://tonelib.net/download/ToneLib-EasyComp-amd64.deb";
      sha256 = "sha256-0ux+COXnLCk68eTEnNaCmvyuy4HJj4ggdXBpVLsguTQ=";
    };
  };
  noisereducer = {
    pname = "noisereducer";
    version = "2.0.2";
    src = fetchurl {
      url = "https://www.tonelib.net/download/ToneLib-NoiseReducer-amd64.deb";
      sha256 = "sha256-R+JXoc6waKGPMaghlJ8BkLumDcjC7Oq0jx8tFjAKegE=";
    };
  };
  tubewarmth = {
    pname = "tubewarmth";
    version = "2.0.1";
    src = fetchurl {
      url = "https://www.tonelib.net/download/ToneLib-TubeWarmth-amd64.deb";
      sha256 = "sha256-Rr+3foO57ZwofoE0aq6aQq2DWT6RZkcl9+1TOxdbYwU=";
    };
  };
  zoom = {
    pname = "zoom";
    version = "4.3.1";
    src = fetchurl {
      url = "https://www.tonelib.net/download/ToneLib-Zoom-amd64.deb";
      sha256 = "sha256-4q2vM0/q7o/FracnO2xxnr27opqfVQoN7fsqTD9Tr/c=";
    };
  };
}
