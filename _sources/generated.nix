# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl }:
{
  dwm-flexipatch = {
    pname = "dwm-flexipatch";
    version = "2ecc15a2ef8ab45d49cbf261cb3280fe9ab3d058";
    src = fetchgit {
      url = "https://github.com/bakkeby/dwm-flexipatch";
      rev = "2ecc15a2ef8ab45d49cbf261cb3280fe9ab3d058";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "1z95qh5da277fc620y65jni2vwpw6kpkkvccs8jxr513ai332pf9";
    };
  };
  st-flexipatch = {
    pname = "st-flexipatch";
    version = "3e41e252b1f85babab0a6c8a3cf084a0e06831a2";
    src = fetchgit {
      url = "https://github.com/bakkeby/st-flexipatch";
      rev = "3e41e252b1f85babab0a6c8a3cf084a0e06831a2";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "1fgi4bjaa19595q814fqwma60hrf28bnd6i0zj3w6n8420xbx2j8";
    };
  };
}
