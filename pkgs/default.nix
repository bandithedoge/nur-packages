{pkgs, ...}: let
  callPackage' = pkg:
    pkgs.callPackage pkg {
      inherit pkgs callPackage';
      sources = pkgs.callPackage (pkg + "/_sources/generated.nix") {};
    };

  callPackages = pkg: pkgs.lib.recurseIntoAttrs (callPackage' pkg);

  packages = {
    airwindows-consolidated = callPackage' ./airwindows-consolidated;
    basiliskii-bin = callPackage' ./basiliskii-bin;
    bitdos-bin = callPackage' ./bitdos-bin;
    cantata = callPackage' ./cantata;
    cardinal = callPackage' ./cardinal;
    charlatan = callPackage' ./charlatan;
    cinelerra-gg-bin = callPackage' ./cinelerra-gg-bin;
    clap-info = callPackage' ./clap-info;
    deemix-gui-bin = callPackage' ./deemix-gui-bin;
    destruqtor = callPackage' ./destruqtor;
    digits-bin = callPackage' ./digits-bin;
    distrho-ports = callPackage' ./distrho-ports;
    dpf-plugins = callPackage' ./dpf-plugins;
    emacsPackages = callPackages ./emacsPackages;
    fennel-language-server = callPackage' ./fennel-language-server;
    firefoxAddons = callPackages ./firefoxAddons;
    flexipatch = callPackages ./flexipatch;
    geonkick = callPackage' ./geonkick;
    giada = callPackage' ./giada;
    haskellPackages = callPackages ./haskellPackages;
    hvcc = callPackage' ./hvcc;
    ildaeil = callPackage' ./ildaeil;
    js80p = callPackage' ./js80p;
    keepmenu = callPackage' ./keepmenu;
    kiwmi = callPackage' ./kiwmi;
    lamb = callPackage' ./lamb;
    luaPackages = callPackages ./luaPackages;
    luakit = callPackage' ./luakit;
    lv2vst = callPackage' ./lv2vst;
    mesonlsp-bin = callPackage' ./mesonlsp-bin;
    microbiome-bin = callPackage' ./microbiome-bin;
    misstrhortion = callPackage' ./misstrhortion;
    modstems = callPackage' ./modstems;
    musique = callPackage' ./musique;
    nimlangserver = callPackage' ./nimlangserver;
    nodePackages = callPackages ./nodePackages;
    octasine = callPackage' ./octasine;
    onagre = callPackage' ./onagre;
    panacea-bin = callPackage' ./panacea-bin;
    powertab = callPackage' ./powertab;
    propertree = callPackage' ./propertree;
    pythonPackages = callPackages ./pythonPackages;
    raze = callPackage' ./raze;
    satty = callPackage' ./satty;
    sgdboop-bin = callPackage' ./sgdboop-bin;
    sheepshaver-bin = callPackage' ./sheepshaver-bin;
    symbols-nerd-font = callPackage' ./symbols-nerd-font;
    tal = callPackages ./tal;
    the-usual-suspects = callPackages ./the-usual-suspects;
    tonelib = callPackages ./tonelib;
    treeSitterGrammars = callPackages ./treeSitterGrammars;
    u-he = callPackages ./u-he;
    uhhyou = callPackage' ./uhhyou;
    umu = callPackage' ./umu;
    vgmtrans = callPackage' ./vgmtrans;
    vimPlugins = callPackages ./vimPlugins;
    waterfox-bin = callPackage' ./waterfox-bin;
    white-elephant-audio = callPackage' ./white-elephant-audio;
    xplrPlugins = callPackages ./xplrPlugins;
    yaziPlugins = callPackages ./yaziPlugins;
    zrythm = callPackage' ./zrythm;
  };
in
  packages
  // (builtins.mapAttrs (old: new: pkgs.lib.warn "${old} has been renamed to ${new}" packages.${new}) (import ./_renamed.nix))
  // {
    osirus = pkgs.lib.warn "osirus has been moved to the-usual-suspects.osirus" packages.the-usual-suspects.osirus;
  }
