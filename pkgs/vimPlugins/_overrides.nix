{ pkgs, ... }:
final: prev: {
  sqlite-lua = prev.sqlite-lua.overrideAttrs (_: {
    postPatch =
      let
        libsqlite = "${pkgs.sqlite.out}/lib/libsqlite3${pkgs.stdenv.hostPlatform.extensions.sharedLibrary}";
      in
      ''
        substituteInPlace lua/sqlite/defs.lua \
          --replace "path = vim.g.sqlite_clib_path" "path = vim.g.sqlite_clib_path or ${pkgs.lib.escapeShellArg libsqlite}"
      '';
  });

  nvim-treesitter = prev.nvim-treesitter.overrideAttrs (old: {
    passthru.withPlugins =
      grammarFn:
      final.nvim-treesitter.overrideAttrs (_: {
        postPatch =
          let
            grammars = pkgs.tree-sitter.withPlugins grammarFn;
          in
          ''
            rm -r parser
            ln -s ${grammars} parser
          '';
      });
  });

  lua-dev-nvim = pkgs.lib.warn "lua-dev.nvim has been renamed to neodev.nvim" final.neodev-nvim;

  null-ls-nvim = pkgs.lib.warn "null-ls.nvim has been discontinued, consider switching to none-ls.nvim" prev.null-ls-nvim;
}
