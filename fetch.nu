#!/usr/bin/env nu

def fetch-emacs [] {
    ^npins -d pkgs/emacsPackages/npins update
}

def fetch-firefox [] {
    ^mozilla-addons-to-nix pkgs/firefoxAddons/addons.json pkgs/firefoxAddons/_generated.nix
}

def fetch-node [] {
    let path = "pkgs/nodePackages/_node2nix"
    (^node2nix
        -i ($path ++ /node-packages.json)
        -o ($path ++ /node-packages.nix)
        -c ($path ++ /default.nix)
        -e ($path ++ /node-env.nix)
    )
}

def fetch-vim [] {
    ^npins -d pkgs/vimPlugins/npins update
}

def fetch-xplr [] {
    ^npins -d pkgs/xplrPlugins/npins update
}

def fetch-yazi [] {
    ^npins -d pkgs/yaziPlugins/npins update
}

def fetch [
    path: string
    --commit
] {
    mut cmd = [nvfetcher -c ($path ++ /nvfetcher.toml) -o ($path ++ /_sources) -t]
    if ("keyfile.toml" | path exists) {
        $cmd ++= [-k keyfile.toml]
    }
    if $commit {
        $cmd ++= [--commit-changes]
    }
    run-external $cmd
}

def main [
    ...packages: string
    --commit
] {
    if ($packages | is-empty) {
        (ls **/nvfetcher.toml) | each {|pkg|
            echo $pkg
            fetch ($pkg.name | path dirname) --commit=$commit
        }
        fetch-emacs
        fetch-firefox
        fetch-node
        fetch-vim
        fetch-xplr
        fetch-yazi
    } else {
        for $package in $packages {
            match $package {
                "emacs" => fetch-emacs,
                "firefox" => fetch-firefox,
                "node" => fetch-node,
                "vim" => fetch-vim,
                "xplr" => fetch-xplr,
                "yazi" => fetch-yazi,
                _ => {fetch $package --commit=$commit },
            }
        }
    }
}
