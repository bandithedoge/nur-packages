{pkgs, ...}: final: prev: {
  eglot-ltex = prev.eglot-ltex.overrideAttrs (_: {
    buildInputs = with pkgs.emacsPackages; [f];
  });
}
