# This file has been generated by node2nix 1.11.1. Do not edit!
{
  nodeEnv,
  fetchurl,
  fetchgit,
  nix-gitignore,
  stdenv,
  lib,
  globalBuildInputs ? [],
}: let
  sources = {
    "@emmetio/abbreviation-2.3.1" = {
      name = "_at_emmetio_slash_abbreviation";
      packageName = "@emmetio/abbreviation";
      version = "2.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/@emmetio/abbreviation/-/abbreviation-2.3.1.tgz";
        sha512 = "QXgYlXZGprqb6aCBJPPWVBN/Jb69khJF73GGJkOk//PoMgSbPGuaHn1hCRolctnzlBHjCIC6Om97Pw46/1A23g==";
      };
    };
    "@emmetio/css-abbreviation-2.1.6" = {
      name = "_at_emmetio_slash_css-abbreviation";
      packageName = "@emmetio/css-abbreviation";
      version = "2.1.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/@emmetio/css-abbreviation/-/css-abbreviation-2.1.6.tgz";
        sha512 = "bvuPogt0OvwcILRg+ZD/oej1H72xwOhUDPWOmhCWLJrZZ8bMTazsWnvw8a8noaaVqUhOE9PsC0tYgGVv5N7fsw==";
      };
    };
    "@emmetio/scanner-1.0.2" = {
      name = "_at_emmetio_slash_scanner";
      packageName = "@emmetio/scanner";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@emmetio/scanner/-/scanner-1.0.2.tgz";
        sha512 = "1ESCGgXRgn1r29hRmz8K0G4Ywr5jDWezMgRnICComBCWmg3znLWU8+tmakuM1og1Vn4W/sauvlABl/oq2pve8w==";
      };
    };
    "@types/node-17.0.45" = {
      name = "_at_types_slash_node";
      packageName = "@types/node";
      version = "17.0.45";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/node/-/node-17.0.45.tgz";
        sha512 = "w+tIMs3rq2afQdsPJlODhoUEKzFP1ayaoyl1CcnwtIlsVe7K7bA1NGm4s3PraqTLlXnbIN84zuBlxBWo1u9BLw==";
      };
    };
    "emmet-2.4.1" = {
      name = "emmet";
      packageName = "emmet";
      version = "2.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/emmet/-/emmet-2.4.1.tgz";
        sha512 = "8rZn/3b0WRT21UeGjQ+bzUqg3up6xBKqRjeWRZA1mrzHokNf4brqPx88XQ53+s9lK2p/pWI2VlTIu1S59OwDtA==";
      };
    };
    "typescript-4.9.5" = {
      name = "typescript";
      packageName = "typescript";
      version = "4.9.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/typescript/-/typescript-4.9.5.tgz";
        sha512 = "1FXk9E2Hm+QzZQ7z+McJiHL4NW1F2EzMu9Nq9i3zAaGqibafqYwCVU6WyWAuyQRRzOlxou8xZSyXLEN8oKj24g==";
      };
    };
    "vscode-jsonrpc-6.0.0" = {
      name = "vscode-jsonrpc";
      packageName = "vscode-jsonrpc";
      version = "6.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-jsonrpc/-/vscode-jsonrpc-6.0.0.tgz";
        sha512 = "wnJA4BnEjOSyFMvjZdpiOwhSq9uDoK8e/kpRJDTaMYzwlkrhG1fwDIZI94CLsLzlCK5cIbMMtFlJlfR57Lavmg==";
      };
    };
    "vscode-languageserver-7.0.0" = {
      name = "vscode-languageserver";
      packageName = "vscode-languageserver";
      version = "7.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver/-/vscode-languageserver-7.0.0.tgz";
        sha512 = "60HTx5ID+fLRcgdHfmz0LDZAXYEV68fzwG0JWwEPBode9NuMYTIxuYXPg4ngO8i8+Ou0lM7y6GzaYWbiDL0drw==";
      };
    };
    "vscode-languageserver-protocol-3.16.0" = {
      name = "vscode-languageserver-protocol";
      packageName = "vscode-languageserver-protocol";
      version = "3.16.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-protocol/-/vscode-languageserver-protocol-3.16.0.tgz";
        sha512 = "sdeUoAawceQdgIfTI+sdcwkiK2KU+2cbEYA0agzM2uqaUy2UpnnGHtWTHVEtS0ES4zHU0eMFRGN+oQgDxlD66A==";
      };
    };
    "vscode-languageserver-textdocument-1.0.9" = {
      name = "vscode-languageserver-textdocument";
      packageName = "vscode-languageserver-textdocument";
      version = "1.0.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-textdocument/-/vscode-languageserver-textdocument-1.0.9.tgz";
        sha512 = "NPfHVGFW2/fQEWHspr8x3PXhRgtFbuDZdl7p6ifuN3M7nk2Yjf5POr/NfDBuAiQG88DehDyJ7nGOT+p+edEtbw==";
      };
    };
    "vscode-languageserver-types-3.16.0" = {
      name = "vscode-languageserver-types";
      packageName = "vscode-languageserver-types";
      version = "3.16.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-types/-/vscode-languageserver-types-3.16.0.tgz";
        sha512 = "k8luDIWJWyenLc5ToFQQMaSrqCHiLwyKPHKPQZ5zz21vM+vIVUSvsRpcbiECH4WR88K2XZqc4ScRcZ7nk/jbeA==";
      };
    };
  };
in {
  "@tailwindcss/language-server" = nodeEnv.buildNodePackage {
    name = "_at_tailwindcss_slash_language-server";
    packageName = "@tailwindcss/language-server";
    version = "0.0.13";
    src = fetchurl {
      url = "https://registry.npmjs.org/@tailwindcss/language-server/-/language-server-0.0.13.tgz";
      sha512 = "C5OKPG8F6IiSbiEgXMxskMsOnbzSGnZvKBxEGHUhBGIB/tlX5rc7Iv/prdwYrUj2Swhjj5TrXuxZgACo+blB4A==";
    };
    buildInputs = globalBuildInputs;
    meta = {
      description = "Tailwind CSS Language Server";
      homepage = "https://github.com/tailwindlabs/tailwindcss-intellisense/tree/HEAD/packages/tailwindcss-language-server#readme";
      license = "MIT";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
  emmet-ls = nodeEnv.buildNodePackage {
    name = "emmet-ls";
    packageName = "emmet-ls";
    version = "0.3.1";
    src = fetchurl {
      url = "https://registry.npmjs.org/emmet-ls/-/emmet-ls-0.3.1.tgz";
      sha512 = "SbNxxpLHnkaT/lA8CpOnnu1fH+VMzEAniAoyqQV+CGVJ9BYwHbaDlOPRckoJFK/6czWCQqDWax1Gk5Pa+HrNmA==";
    };
    dependencies = [
      sources."@emmetio/abbreviation-2.3.1"
      sources."@emmetio/css-abbreviation-2.1.6"
      sources."@emmetio/scanner-1.0.2"
      sources."@types/node-17.0.45"
      sources."emmet-2.4.1"
      sources."typescript-4.9.5"
      sources."vscode-jsonrpc-6.0.0"
      sources."vscode-languageserver-7.0.0"
      sources."vscode-languageserver-protocol-3.16.0"
      sources."vscode-languageserver-textdocument-1.0.9"
      sources."vscode-languageserver-types-3.16.0"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "emmet support by LSP";
      homepage = "https://github.com/aca/emmet-ls#readme";
      license = "MIT";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
}
