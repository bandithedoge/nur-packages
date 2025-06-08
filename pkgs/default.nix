{ pkgs, ... }:
let
  callPackageArgs = pkg: {
    inherit pkgs callPackage';
    sources = pkgs.callPackage (pkg + "/_sources/generated.nix") { };
    utils = callPackage' ../utils;
  };

  callPackage' = pkg: pkgs.callPackage pkg (callPackageArgs pkg);

  callPackages' = pkg: pkgs.lib.recurseIntoAttrs (pkgs.callPackages pkg (callPackageArgs pkg));

  concat = pkgs.lib.concatStringsSep ".";

  packages = {
    actuate = callPackage' ./actuate;
    aida-x = callPackage' ./aida-x;
    apisonic = callPackages' ./apisonic;
    arboreal = callPackages' ./arboreal;
    audible-planets-bin = callPackage' ./audible-planets-bin;
    basiliskii-bin = callPackage' ./basiliskii-bin;
    beetsPackages = callPackages' ./beetsPackages;
    bitdos-bin = callPackage' ./bitdos-bin;
    blender-radeon-prorender = callPackage' ./blender-radeon-prorender;
    blepfx = callPackages' ./blepfx;
    blocks = callPackage' ./blocks;
    cardinal = callPackage' ./cardinal;
    chainner-bin = callPackage' ./chainner-bin;
    charlatan = callPackage' ./charlatan;
    cherry-doom = callPackage' ./cherry-doom;
    cinelerra-gg-bin = callPackage' ./cinelerra-gg-bin;
    clap-info = callPackage' ./clap-info;
    cloudreverb = callPackage' ./cloudreverb;
    crepe-vamp-plugin-bin = callPackage' ./crepe-vamp-plugin-bin;
    curl-gnutls3 = callPackage' ./curl-gnutls3;
    deemix-gui-bin = callPackage' ./deemix-gui-bin;
    digits-bin = callPackage' ./digits-bin;
    distrho-ports = callPackage' ./distrho-ports;
    dpf-plugins = callPackage' ./dpf-plugins;
    dsp56300 = callPackage' ./dsp56300;
    element = callPackage' ./element;
    emacsPackages = callPackages' ./emacsPackages;
    fennel-language-server = callPackage' ./fennel-language-server;
    filtr = callPackage' ./filtr;
    firefly-synth = callPackage' ./firefly-synth;
    firefoxAddons = callPackages' ./firefoxAddons;
    flexipatch = callPackages' ./flexipatch;
    gate-12 = callPackage' ./gate-12;
    geonkick = callPackage' ./geonkick;
    giada = callPackage' ./giada;
    gnomedistort2 = callPackage' ./gnomedistort2;
    guitarix-vst-bin = callPackage' ./guitarix-vst-bin;
    guitarml = callPackages' ./guitarml;
    harrison = callPackages' ./harrison;
    haskellPackages = callPackages' ./haskellPackages;
    helion-bin = callPackage' ./helion-bin;
    hera = callPackage' ./hera;
    hise = callPackage' ./hise;
    hvcc = callPackage' ./hvcc;
    igorski = callPackages' ./igorski;
    ildaeil = callPackage' ./ildaeil;
    ircam-vamp-plugins-bin = callPackage' ./ircam-vamp-plugins-bin;
    js80p = callPackage' ./js80p;
    just-a-sample-bin = callPackage' ./just-a-sample-bin;
    k-whooms = callPackage' ./k-whooms;
    keepmenu = callPackage' ./keepmenu;
    kiwmi = callPackage' ./kiwmi;
    klknn = callPackages' ./klknn;
    lamb-bin = callPackage' ./lamb-bin;
    lazyusf = callPackage' ./lazyusf;
    luaPackages = callPackages' ./luaPackages;
    lv2vst = callPackage' ./lv2vst;
    maim-bin = callPackage' ./maim-bin;
    microbiome-bin = callPackage' ./microbiome-bin;
    misstrhortion = callPackage' ./misstrhortion;
    mod-desktop-bin = callPackage' ./mod-desktop-bin;
    modstems = callPackage' ./modstems;
    molot-lite = callPackage' ./molot-lite;
    monique = callPackage' ./monique;
    morewaita = callPackage' ./morewaita;
    musique = callPackage' ./musique;
    mxtune-bin = callPackage' ./mxtune-bin;
    nodePackages = callPackages' ./nodePackages;
    nugget-doom = callPackage' ./nugget-doom;
    nyan-doom = callPackage' ./nyan-doom;
    octasine = callPackage' ./octasine;
    onagre = callPackage' ./onagre;
    oneknob-series = callPackage' ./oneknob-series;
    panacea-bin = callPackage' ./panacea-bin;
    partiels = callPackage' ./partiels;
    peakeater-bin = callPackage' ./peakeater-bin;
    projucer = callPackage' ./projucer;
    propertree = callPackage' ./propertree;
    proton = callPackages' ./proton;
    protrekkr = callPackage' ./protrekkr;
    psydoom-bin = callPackage' ./psydoom-bin;
    pythonPackages = callPackages' ./pythonPackages;
    resonarium = callPackage' ./resonarium;
    reverse-camel = callPackage' ./reverse-camel;
    ripplerx = callPackage' ./ripplerx;
    rnnoise-plugin = callPackage' ./rnnoise-plugin;
    roomreverb = callPackage' ./roomreverb;
    schrammel-ojd = callPackage' ./schrammel-ojd;
    sg-323 = callPackage' ./sg-323;
    sgdboop-bin = callPackage' ./sgdboop-bin;
    sheepshaver-bin = callPackage' ./sheepshaver-bin;
    showmidi-bin = callPackage' ./showmidi-bin;
    sinuslabs = callPackages' ./sinuslabs;
    snyk-ls-bin = callPackage' ./snyk-ls-bin;
    squeezer-bin = callPackage' ./squeezer-bin;
    tal = callPackages' ./tal;
    thorium-bin = callPackage' ./thorium-bin;
    tonelib = callPackages' ./tonelib;
    tonez = callPackage' ./tonez;
    u-he = callPackages' ./u-he;
    uhhyou = callPackage' ./uhhyou;
    valentine = callPackage' ./valentine;
    venn = callPackages' ./venn;
    vgmtrans = callPackage' ./vgmtrans;
    vimPlugins = callPackages' ./vimPlugins;
    vitalium-verb-bin = callPackage' ./vitalium-verb-bin;
    vkdoom = callPackage' ./vkdoom;
    waterfox-bin = callPackage' ./waterfox-bin;
    whisper-vamp-plugin-bin = callPackage' ./whisper-vamp-plugin-bin;
    white-elephant-audio = callPackage' ./white-elephant-audio;
    winegui = callPackage' ./winegui;
    xplrPlugins = callPackages' ./xplrPlugins;
    yaziPlugins = callPackages' ./yaziPlugins;
    ysfx = callPackage' ./ysfx;
    zl-audio = callPackages' ./zl-audio;
    zlint-bin = callPackage' ./zlint-bin;
  };
in
pkgs.lib.recursiveUpdate
  (pkgs.lib.recursiveUpdate packages (
    pkgs.lib.mapAttrsRecursive (
      old: new:
      pkgs.lib.warn "${concat old} has been renamed to ${concat new}" (
        pkgs.lib.attrByPath new null packages
      )
    ) (import ./_renamed.nix)
  ))
  (
    pkgs.lib.mapAttrsRecursive (
      old: new:
      pkgs.lib.warn "${concat old} has been upstreamed to nixpkgs as ${concat new}" pkgs.lib.attrByPath
        new
        null
        pkgs
    ) (import ./_upstreamed.nix)
  )
