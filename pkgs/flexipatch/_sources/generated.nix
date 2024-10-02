# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  dmenu-flexipatch = {
    pname = "dmenu-flexipatch";
    version = "43f0483d5a0bd854d5e405d84d4a566728e1a958";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dmenu-flexipatch";
      rev = "43f0483d5a0bd854d5e405d84d4a566728e1a958";
      fetchSubmodules = false;
      sha256 = "sha256-ILIeOpSUA6TmsH5ykfk8Jf43v+eI3TR5+eFzGL+mE9U=";
    };
    date = "2024-09-19";
  };
  dwm-flexipatch = {
    pname = "dwm-flexipatch";
    version = "36cbcf53a232818e5d523dd0337bb635556e91ef";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "dwm-flexipatch";
      rev = "36cbcf53a232818e5d523dd0337bb635556e91ef";
      fetchSubmodules = false;
      sha256 = "sha256-kOdOjQDjdndMvKR3J5RpWWUlsUt1sLis1bv6GCAdk8w=";
    };
    date = "2024-08-01";
  };
  slock-flexipatch = {
    pname = "slock-flexipatch";
    version = "316de8856f9f25685f6f1c4e94dbf76e4f64c06b";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "slock-flexipatch";
      rev = "316de8856f9f25685f6f1c4e94dbf76e4f64c06b";
      fetchSubmodules = false;
      sha256 = "sha256-jsAfkd2Xtzp4zKwY0bExPhVtcs+OeBdGJA29SPC04jk=";
    };
    date = "2023-10-06";
  };
  st-flexipatch = {
    pname = "st-flexipatch";
    version = "3f1a5ed034b65e8d9542e506bb7e85ed1fd4303c";
    src = fetchFromGitHub {
      owner = "bakkeby";
      repo = "st-flexipatch";
      rev = "3f1a5ed034b65e8d9542e506bb7e85ed1fd4303c";
      fetchSubmodules = false;
      sha256 = "sha256-GY1Vw6ZPOOgSNWzHRIUz/nTAykPPzr0lpr8BNzpr6KM=";
    };
    date = "2024-10-01";
  };
}
