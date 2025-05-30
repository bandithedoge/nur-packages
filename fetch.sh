#!/usr/bin/env bash

fetch() {
  test -f keyfile.toml && keyfile="-k keyfile.toml"
  if [ "$2" = true ]; then
    commit="--commit-changes"
    echo commiting
  fi
  # shellcheck disable=2086
  nvfetcher $keyfile -c "$1/nvfetcher.toml" -o "$1"/_sources -t $commit || exit 1
}

fetch_vim() {
  npins -d pkgs/vimPlugins/npins update || exit 1
}

fetch_emacs() {
  npins -d pkgs/emacsPackages/npins update || exit 1
}

fetch_node() {
  cd pkgs/nodePackages/_node2nix || exit
  node2nix -i node-packages.json || exit 1
  cd ../../..
}

fetch_firefox() {
  mozilla-addons-to-nix pkgs/firefoxAddons/addons.json pkgs/firefoxAddons/_generated.nix || exit 1
}

fetch_xplr() {
  npins -d pkgs/xplrPlugins/npins update || exit 1
}

fetch_yazi() {
  npins -d pkgs/yaziPlugins/npins update || exit 1
}

if [ "$#" -eq 0 ] || [ "$1" = "--commit" ]; then
  pkgs=$(find . -name nvfetcher.toml)
  for pkg in ${pkgs}; do
    # shellcheck disable=2046
    fetch "$(dirname "$pkg")" $([ "$1" = "--commit" ])
  done
  fetch_vim
  fetch_emacs
  fetch_node
  fetch_firefox
  fetch_xplr
  fetch_yazi
else
  for pkg in "$@"; do
    case "$pkg" in
    vim) fetch_vim ;;
    emacs) fetch_emacs ;;
    node) fetch_node ;;
    firefox) fetch_firefox ;;
    xplr) fetch_xplr ;;
    *) fetch "$pkg" ;;
    esac
  done
fi
