# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  sg-323 = {
    pname = "sg-323";
    version = "1.0.0";
    src = fetchFromGitHub {
      owner = "greyboxaudio";
      repo = "SG-323";
      rev = "1.0.0";
      fetchSubmodules = true;
      sha256 = "sha256-qA+H6Kf9UA1VlUC3aOn3DJb6rJYCfPN+UXDfvMGqkm0=";
    };
  };
}
