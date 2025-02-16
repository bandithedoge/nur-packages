# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  zlint-bin-aarch64-darwin = {
    pname = "zlint-bin-aarch64-darwin";
    version = "v0.6.3";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.6.3/zlint-macos-aarch64";
      sha256 = "sha256-QMvlaa1SW9+m25S//tSlSfzVpv8Vgavvnqxcb7fgn5c=";
    };
  };
  zlint-bin-aarch64-linux = {
    pname = "zlint-bin-aarch64-linux";
    version = "v0.6.3";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.6.3/zlint-linux-aarch64";
      sha256 = "sha256-Kvbtfh9kLVvmWggZk92EsC6Bo2+6eFsEx4r/AArIQ04=";
    };
  };
  zlint-bin-x86_64-darwin = {
    pname = "zlint-bin-x86_64-darwin";
    version = "v0.6.3";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.6.3/zlint-macos-x86_64";
      sha256 = "sha256-h2u1o2sijdLl+9GT3LhZKJTRUyNIJ4QGyujddYOewd0=";
    };
  };
  zlint-bin-x86_64-linux = {
    pname = "zlint-bin-x86_64-linux";
    version = "v0.6.3";
    src = fetchurl {
      url = "https://github.com/DonIsaac/zlint/releases/download/v0.6.3/zlint-linux-x86_64";
      sha256 = "sha256-GZhVUade1OqC9fT6BIjzAiaYh11NKBDSCBHkPJiu8xI=";
    };
  };
}
