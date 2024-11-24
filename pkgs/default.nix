{pkgs, ...}: let
  callPackage' = pkg:
    pkgs.callPackage pkg {
      inherit pkgs callPackage';
      sources = pkgs.callPackage (pkg + "/_sources/generated.nix") {};
    };

  callPackages = pkg: pkgs.lib.recurseIntoAttrs (callPackage' pkg);

  packages = {
    actuate = callPackage' ./actuate;
    aida-x = callPackage' ./aida-x;
    airwindows-consolidated = callPackage' ./airwindows-consolidated;
    audible-planets-bin = callPackage' ./audible-planets-bin;
    basiliskii-bin = callPackage' ./basiliskii-bin;
    bitdos-bin = callPackage' ./bitdos-bin;
    blocks = callPackage' ./blocks;
    cantata = callPackage' ./cantata;
    cardinal = callPackage' ./cardinal;
    charlatan = callPackage' ./charlatan;
    cinelerra-gg-bin = callPackage' ./cinelerra-gg-bin;
    clap-info = callPackage' ./clap-info;
    cloudreverb = callPackage' ./cloudreverb;
    deemix-gui-bin = callPackage' ./deemix-gui-bin;
    destruqtor = callPackage' ./destruqtor;
    digits-bin = callPackage' ./digits-bin;
    distrho-ports = callPackage' ./distrho-ports;
    dpf-plugins = callPackage' ./dpf-plugins;
    dsp56300 = callPackage' ./dsp56300;
    emacsPackages = callPackages ./emacsPackages;
    fennel-language-server = callPackage' ./fennel-language-server;
    firefly-synth = callPackage' ./firefly-synth;
    firefoxAddons = callPackages ./firefoxAddons;
    flexipatch = callPackages ./flexipatch;
    geonkick = callPackage' ./geonkick;
    giada = callPackage' ./giada;
    haskellPackages = callPackages ./haskellPackages;
    hera = callPackage' ./hera;
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
    peakeater-bin = callPackage' ./peakeater-bin;
    powertab = callPackage' ./powertab;
    propertree = callPackage' ./propertree;
    protrekkr = callPackage' ./protrekkr;
    pythonPackages = callPackages ./pythonPackages;
    raze = callPackage' ./raze;
    satty = callPackage' ./satty;
    sg-323 = callPackage' ./sg-323;
    sgdboop-bin = callPackage' ./sgdboop-bin;
    sheepshaver-bin = callPackage' ./sheepshaver-bin;
    symbols-nerd-font = callPackage' ./symbols-nerd-font;
    tal = callPackages ./tal;
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
    zl-audio = callPackages ./zl-audio;
    zrythm = callPackage' ./zrythm;
  };
in
  packages
  // (pkgs.lib.mapAttrsRecursive
    (old: new: let
      concat = pkgs.lib.concatStringsSep ".";
    in
      pkgs.lib.warn "${concat old} has been renamed to ${concat new}" (pkgs.lib.attrByPath new null packages))
    (import ./_renamed.nix))
