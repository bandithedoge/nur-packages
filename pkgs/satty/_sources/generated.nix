# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  satty = {
    pname = "satty";
    version = "5e5b5d13d52684f2807271c644e280b0c3fb54bd";
    src = fetchFromGitHub {
      owner = "gabm";
      repo = "Satty";
      rev = "5e5b5d13d52684f2807271c644e280b0c3fb54bd";
      fetchSubmodules = false;
      sha256 = "sha256-4MU58tYF5UnFUZzgipG21wISQMawqdENYBhQHBxcFK0=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./satty-5e5b5d13d52684f2807271c644e280b0c3fb54bd/Cargo.lock;
      outputHashes = {
      };
    };
    date = "2024-02-28";
  };
}
