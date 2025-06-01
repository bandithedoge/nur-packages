{
  airwindows-consolidated = [ "airwin2rack" ];
  cantata = [ "cantata" ];
  emacsPackages =
    map
      (name: [
        "emacsPackages"
        name
      ])
      {
        eglot-inactive-regions = "eglot-inactive-regions";
        indent-bars = "indent-bars";
        on = "on";
        smartparens = "smartparens";
      };
  luakit = [ "luakit" ];
  mesonlsp-bin = [ "mesonlsp" ];
  nimlangserver = [ "nimlangserver" ];
  powertab = [ "powertab-editor" ];
  satty = [ "satty" ];
  symbols-nerd-font = [
    "nerd-fonts"
    "symbols-only"
  ];
  treeSitterGrammars.hypr = [
    "tree-sitter-grammars"
    "tree-sitter-hyprland"
  ];
  zrythm = [ "zrythm" ];
}
