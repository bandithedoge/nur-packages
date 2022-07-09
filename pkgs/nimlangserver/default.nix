{
  pkgs,
  sources,
}: let
  buildNimblePackage = import (sources.nimble2nix.src + "/buildNimblePackage.nix") {inherit pkgs;};
in
  buildNimblePackage {
    inherit (sources.nimlangserver) pname version src;
    deps = ./nimble2nix.json;
  }
