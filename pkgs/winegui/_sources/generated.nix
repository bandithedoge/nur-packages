# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  winegui = {
    pname = "winegui";
    version = "519eb30a992a7b308d36e343c6881a443fa1e392";
    src = fetchgit {
      url = "https://gitlab.melroy.org/melroy/winegui";
      rev = "519eb30a992a7b308d36e343c6881a443fa1e392";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-ZhEClEy3+ft3oi7AE0SkouAEyLH52WPaAyHeLyMv6vw=";
    };
    date = "2024-12-04";
  };
}