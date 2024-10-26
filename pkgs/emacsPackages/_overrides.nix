{pkgs, ...}: final: prev: {
  eglot-ltex = prev.eglot-ltex.overrideAttrs (_: {
    buildInputs = with pkgs.emacsPackages; [f];
  });

  indent-bars = prev.indent-bars.overrideAttrs (_: {
    buildInputs = with pkgs.emacsPackages; [compat];
  });
}
