{
  airwindows-consolidated = [ "airwin2rack" ];
  cantata = [ "cantata" ];
  distrho-ports = [ "distrho-ports" ];
  emacsPackages =
    builtins.mapAttrs
      (_: name: [
        "emacsPackages"
        name
      ])
      {
        eglot-inactive-regions = "eglot-inactive-regions";
        indent-bars = "indent-bars";
        on = "on";
        smartparens = "smartparens";
      };
  geonkick = [ "geonkick" ];
  giada = [ "giada" ];
  luakit = [ "luakit" ];
  mesonlsp-bin = [ "mesonlsp" ];
  nimlangserver = [ "nimlangserver" ];
  nugget-doom = [ "nugget-doom" ];
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
  zlint-bin = [ "zlint-zig" ];
  zrythm = [ "zrythm" ];
}
