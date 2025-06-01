{ pkgs, ... }:
final: prev: {
  eglot-ltex = prev.eglot-ltex.overrideAttrs (_: {
    buildInputs = with pkgs.emacsPackages; [ f ];
  });

  org-bars = prev.org-bars.overrideAttrs (_: {
    buildInputs = with pkgs.emacsPackages; [
      dash
      s
    ];
  });
}
