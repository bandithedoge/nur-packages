#!/usr/bin/env nu

def main [
    name: string
] {
    mkdir $"pkgs/($name)"
    $"[($name)]\n" | save $"pkgs/($name)/nvfetcher.toml"
    $"{
      sources,

      lib,
      stdenv,
    }:
    stdenv.mkDerivation {
      inherit \(sources.($name)) pname version src;

      # meta = with lib; {
      #   description = \"\";
      #   homepage = \"\";
      #   license = null;
      #   platforms = [];
      # };
    }" | nixfmt | save $"pkgs/($name)/package.nix"
    print $"created new package at pkgs/($name)"
}
