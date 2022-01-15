{ stdenv, fetchFromGitHub, lib, buildGoModule }:
buildGoModule rec {
  pname = "mpdcord";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "bandithedoge";
    repo = "mpdcord";
    rev = "v${version}";
    sha256 = "sha256-1/KedGF2dJgp0FlU5HpntkPI7PfLabJVOz7T9+06QWo=";
  };

  vendorSha256 = null;
  proxyVendor = true;
  doCheck = false;
}
