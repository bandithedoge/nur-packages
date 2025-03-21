# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  zlint-bin-aarch64-darwin = {
    pname = "zlint-bin-aarch64-darwin";
    version = "v0.7.2";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.7.2/zlint-macos-aarch64";
      sha256 = "sha256-FbUsqXmpHvQYLZ1I+3tbV9Vj9n4bzoDJRQ+FbazaxJU=";
    };
  };
  zlint-bin-aarch64-linux = {
    pname = "zlint-bin-aarch64-linux";
    version = "v0.7.2";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.7.2/zlint-linux-aarch64";
      sha256 = "sha256-MNTLaKVuNjgeLIx3L21vGOupFPfThynSYqQlDLiRrug=";
    };
  };
  zlint-bin-x86_64-darwin = {
    pname = "zlint-bin-x86_64-darwin";
    version = "v0.7.2";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.7.2/zlint-macos-x86_64";
      sha256 = "sha256-7jERLz9HGdLmHWEa+kPJIRyWsnb5psRpEPaaL07yI/M=";
    };
  };
  zlint-bin-x86_64-linux = {
    pname = "zlint-bin-x86_64-linux";
    version = "v0.7.2";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.7.2/zlint-linux-x86_64";
      sha256 = "sha256-J6nhhoKBSevVVv/qr5JYS2y3po8Nt5UM5yidIho7j44=";
    };
  };
}
