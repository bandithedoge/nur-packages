# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  cinelerra-gg = {
    pname = "cinelerra-gg";
    version = "20250228";
    src = fetchurl {
      url = "https://cinelerra-gg.org/download/images/CinGG-20250228-x86_64.AppImage";
      sha256 = "sha256-cfKxEkkr6p9H+j17kWbEwVY+BHyg648I+YBVojkaPnI=";
    };
  };
}
