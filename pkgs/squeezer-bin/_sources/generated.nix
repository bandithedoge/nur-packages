# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}:
{
  squeezer-bin-standalone = {
    pname = "squeezer-bin-standalone";
    version = "2.5.4";
    src = fetchurl {
      url = "https://github.com/mzuther/Squeezer/releases/download/v2.5.4/squeezer-linux64-standalone_2.5.4.tar.gz";
      sha256 = "sha256-M0Q95PrL/91r9xA2T88yzV/EpmwIWdC+7JylBpPuDLs=";
    };
  };
  squeezer-bin-vst2 = {
    pname = "squeezer-bin-vst2";
    version = "2.5.4";
    src = fetchurl {
      url = "https://github.com/mzuther/Squeezer/releases/download/v2.5.4/squeezer-linux64-vst2_2.5.4.tar.gz";
      sha256 = "sha256-o5b+jg27gyt6G3duatijdS/ZIObkQl/sMtZLHvt+vzs=";
    };
  };
}
