# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}:
{
  morewaita = {
    pname = "morewaita";
    version = "9e61807fc2a5f959df398d7cf0aedc9e92b4c89d";
    src = fetchgit {
      url = "https://github.com/somepaulo/MoreWaita";
      rev = "9e61807fc2a5f959df398d7cf0aedc9e92b4c89d";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-3j8dZv8OMEUHXmMdiSb/wp6FxJrsLQKHVR2zE+8XrJw=";
    };
    date = "2025-07-12";
  };
}
