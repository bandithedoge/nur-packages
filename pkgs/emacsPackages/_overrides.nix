{ pkgs, ... }:
final: prev: {
  eglot-ltex = prev.eglot-ltex.overrideAttrs (_: {
    buildInputs = with pkgs.emacs.pkgs; [ f ];
  });

  org-bars = prev.org-bars.overrideAttrs (_: {
    buildInputs = with pkgs.emacs.pkgs; [
      dash
      s
    ];
  });
}
