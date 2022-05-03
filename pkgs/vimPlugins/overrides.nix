final: prev:
{
  telescope-frecency-nvim = prev.telescope-frecency-nvim.overrideAttrs (old: {
    buildInputs = [ final.sqlite-lua ];
  });
}
