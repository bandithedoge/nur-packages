{
  callPackage',
  sources,
}:
{
  dmenu = callPackage' ./dmenu.nix { inherit sources; };
  dwm = callPackage' ./dwm.nix { inherit sources; };
  slock = callPackage' ./slock.nix { inherit sources; };
  st = callPackage' ./st.nix { inherit sources; };
}
