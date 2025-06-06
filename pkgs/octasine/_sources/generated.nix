# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}:
{
  octasine = {
    pname = "octasine";
    version = "v0.9.1";
    src = fetchurl {
      url = "https://github.com/greatest-ape/OctaSine/archive/v0.9.1.tar.gz";
      sha256 = "sha256-tn/mGdeZtCAJVjBO3TvH8BlSMZ/LGhHAEJZi6yPiT3U=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./octasine-v0.9.1/Cargo.lock;
      outputHashes = {
        "iced_baseview-0.0.3" = "sha256-BXGYNoRLZBE2DyJ/113u31ORxR2RrJ0A9fdKrhp3RiI=";
        "reflink-0.1.3" = "sha256-1o5d/mepjbDLuoZ2/49Bi6sFgVX4WdCuhGJkk8ulhcI=";
        "nih_plug_xtask-0.1.0" = "sha256-9MXkZESUK/NbZqEpDI/myqhFu+sX72hSBz9685/SACM=";
        "baseview-0.1.0" = "sha256-QAkOTdA5krZPOUs7ExTVGfqK+sxG2A4H87GZgDl2LpU=";
      };
    };
  };
}
