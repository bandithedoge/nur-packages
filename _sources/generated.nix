# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub }:
{
  dmenu-flexipatch = {
    pname = "dmenu-flexipatch";
    version = "5c1be5d667ac7094742228de85af4dbdc12706ef";
    src = fetchFromGitHub ({
      owner = "bakkeby";
      repo = "dmenu-flexipatch";
      rev = "5c1be5d667ac7094742228de85af4dbdc12706ef";
      fetchSubmodules = false;
      sha256 = "sha256-WD22+terfPhN73rDiv1J9D2N53hgTOJx9deMl+YkqHs=";
    });
  };
  dwm-flexipatch = {
    pname = "dwm-flexipatch";
    version = "c553f93b528449ed2e7d4b424f063ef3c1d3d8f6";
    src = fetchFromGitHub ({
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "c553f93b528449ed2e7d4b424f063ef3c1d3d8f6";
      fetchSubmodules = false;
      sha256 = "sha256-6aji4pxzpqyEU42oRlgK3jAQEPMihgxS+AUMWA9w5gA=";
    });
  };
  st-flexipatch = {
    pname = "st-flexipatch";
    version = "6e962cc929455bcbba4b50348ad67f41d09a9cc2";
    src = fetchFromGitHub ({
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "6e962cc929455bcbba4b50348ad67f41d09a9cc2";
      fetchSubmodules = false;
      sha256 = "sha256-X3EORP9hGR7wqsJWb6cv6zHGL5cNjQbcG2Dci0QDcws=";
    });
  };
  taffybar = {
    pname = "taffybar";
    version = "945a08452660de603193da8d297d559fdca497d1";
    src = fetchFromGitHub ({
      owner = "taffybar";
      repo = "taffybar";
      rev = "945a08452660de603193da8d297d559fdca497d1";
      fetchSubmodules = false;
      sha256 = "sha256-3H8sRK7qszYpVnX9o1UMCDUGTGtS+KLhyZ+Pu0h8EbY=";
    });
  };
}
