# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  satty = {
    pname = "satty";
    version = "v0.14.0";
    src = fetchurl {
      url = "https://github.com/gabm/Satty/archive/v0.14.0.tar.gz";
      sha256 = "sha256-MRh4Q3faklT7zPX+hbdiKqbtAFSkydl3vHKsgX4sH5Y=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./satty-v0.14.0/Cargo.lock;
      outputHashes = {
      };
    };
  };
}
