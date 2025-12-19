#!/usr/bin/env nu

def main [
    name: string
] {
    mkdir $"pkgs/($name)"
    $"[($name)]\n" | save $"pkgs/($name)/nvfetcher.toml"
    $"{
      sources,

      stdenv,
    }:
    stdenv.mkDerivation {
      inherit \(sources.($name)) pname version src;
    }" | nixfmt | save $"pkgs/($name)/package.nix"
    print $"created new package at pkgs/($name)"
}
