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
    "@babel/helper-string-parser-7.25.9" = {
      name = "_at_babel_slash_helper-string-parser";
      packageName = "@babel/helper-string-parser";
      version = "7.25.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-string-parser/-/helper-string-parser-7.25.9.tgz";
        sha512 = "4A/SCr/2KLd5jrtOMFzaKjVtAei3+2r/NChoBNoZ3EyP/+GlhoaEGoWOZUmFmoITP7zOJyHIMm+DYRd8o3PvHA==";
      };
    };
    "@babel/helper-validator-identifier-7.25.9" = {
      name = "_at_babel_slash_helper-validator-identifier";
      packageName = "@babel/helper-validator-identifier";
      version = "7.25.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-validator-identifier/-/helper-validator-identifier-7.25.9.tgz";
        sha512 = "Ed61U6XJc3CVRfkERJWDz4dJwKe7iLmmJsbOGu9wSloNSFttHV0I8g6UAgb7qnK5ly5bGLPd4oXZlxCdANBOWQ==";
      };
    };
    "@babel/parser-7.26.10" = {
      name = "_at_babel_slash_parser";
      packageName = "@babel/parser";
      version = "7.26.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/@babel/parser/-/parser-7.26.10.tgz";
        sha512 = "6aQR2zGE/QFi8JpDLjUZEPYOs7+mhKXm86VaKFiLP35JQwQb6bwUE+XbvkH0EptsYhbNBSUGaUBLKqxH1xSgsA==";
      };
    };
    "@babel/types-7.26.10" = {
      name = "_at_babel_slash_types";
      packageName = "@babel/types";
      version = "7.26.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/@babel/types/-/types-7.26.10.tgz";
        sha512 = "emqcG3vHrpxUKTrxcblR36dcrcoRDvKmnL/dCL6ZsHaShW80qxCAcNhzQZrpeM765VzEos+xOi4s+r4IXzTwdQ==";
      };
    };
    "@emmetio/abbreviation-2.3.3" = {
      name = "_at_emmetio_slash_abbreviation";
      packageName = "@emmetio/abbreviation";
      version = "2.3.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/@emmetio/abbreviation/-/abbreviation-2.3.3.tgz";
        sha512 = "mgv58UrU3rh4YgbE/TzgLQwJ3pFsHHhCLqY20aJq+9comytTXUDNGG/SMtSeMJdkpxgXSXunBGLD8Boka3JyVA==";
      };
    };
    "@emmetio/css-abbreviation-2.1.8" = {
      name = "_at_emmetio_slash_css-abbreviation";
      packageName = "@emmetio/css-abbreviation";
      version = "2.1.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/@emmetio/css-abbreviation/-/css-abbreviation-2.1.8.tgz";
        sha512 = "s9yjhJ6saOO/uk1V74eifykk2CBYi01STTK3WlXWGOepyKa23ymJ053+DNQjpFcy1ingpaO7AxCcwLvHFY9tuw==";
      };
    };
    "@emmetio/scanner-1.0.4" = {
      name = "_at_emmetio_slash_scanner";
      packageName = "@emmetio/scanner";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/@emmetio/scanner/-/scanner-1.0.4.tgz";
        sha512 = "IqRuJtQff7YHHBk4G8YZ45uB9BaAGcwQeVzgj/zj8/UdOhtQpEIupUhSk8dys6spFIWVZVeK20CzGEnqR5SbqA==";
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
    "@vscode/emmet-helper-2.11.0" = {
      name = "_at_vscode_slash_emmet-helper";
      packageName = "@vscode/emmet-helper";
      version = "2.11.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@vscode/emmet-helper/-/emmet-helper-2.11.0.tgz";
        sha512 = "QLxjQR3imPZPQltfbWRnHU6JecWTF1QSWhx3GAKQpslx7y3Dp6sIIXhKjiUJ/BR9FX8PVthjr9PD6pNwOJfAzw==";
      };
    };
    "acorn-8.14.1" = {
      name = "acorn";
      packageName = "acorn";
      version = "8.14.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/acorn/-/acorn-8.14.1.tgz";
        sha512 = "OvQ/2pUDKmgfCg++xsTX1wGxfTaszcHVcTctW4UJB4hibJx2HXxxO5UmVgyjMa+ZDsiaf5wWLXYpRWMmBI0QHg==";
      };
    };
    "argparse-2.0.1" = {
      name = "argparse";
      packageName = "argparse";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/argparse/-/argparse-2.0.1.tgz";
        sha512 = "8+9WqebbFzpX9OR+Wa6O29asIogeRMzcGtAINdpMHHyAg10f05aSFVBbcEqGf/PXw1EjAZ+q2/bEBg3DvurK3Q==";
      };
    };
    "bumpp-9.11.1" = {
      name = "bumpp";
      packageName = "bumpp";
      version = "9.11.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/bumpp/-/bumpp-9.11.1.tgz";
        sha512 = "jBHlab9NnRwrpHsockb5E+MBo0os2yS6S7i3cnN8hB6EkTardKQotmd0CFdOc8pubLz2fxj2AD6RGtrySVG6Mw==";
      };
    };
    "c12-2.0.4" = {
      name = "c12";
      packageName = "c12";
      version = "2.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/c12/-/c12-2.0.4.tgz";
        sha512 = "3DbbhnFt0fKJHxU4tEUPmD1ahWE4PWPMomqfYsTJdrhpmEnRKJi3qSC4rO5U6E6zN1+pjBY7+z8fUmNRMaVKLw==";
      };
    };
    "cac-6.7.14" = {
      name = "cac";
      packageName = "cac";
      version = "6.7.14";
      src = fetchurl {
        url = "https://registry.npmjs.org/cac/-/cac-6.7.14.tgz";
        sha512 = "b6Ilus+c3RrdDk+JhLKUAQfzzgLEPy6wcXqS7f/xe1EETvsDP6GORG7SFuOs6cID5YkqchW/LXZbX5bc8j7ZcQ==";
      };
    };
    "chokidar-4.0.3" = {
      name = "chokidar";
      packageName = "chokidar";
      version = "4.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/chokidar/-/chokidar-4.0.3.tgz";
        sha512 = "Qgzu8kfBvo+cA4962jnP1KkS6Dop5NS6g7R5LFYJr4b8Ub94PPQXUksCw9PvXoeXPRRddRNC5C1JQUR2SMGtnA==";
      };
    };
    "chownr-2.0.0" = {
      name = "chownr";
      packageName = "chownr";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/chownr/-/chownr-2.0.0.tgz";
        sha512 = "bIomtDF5KGpdogkLd9VspvFzk9KfpyyGlS8YFVZl7TGPBHL5snIOnxeshwVgPteQ9b4Eydl+pVbIyE1DcvCWgQ==";
      };
    };
    "citty-0.1.6" = {
      name = "citty";
      packageName = "citty";
      version = "0.1.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/citty/-/citty-0.1.6.tgz";
        sha512 = "tskPPKEs8D2KPafUypv2gxwJP8h/OaJmC82QQGGDQcHvXX43xF2VDACcJVmZ0EuSxkpO9Kc4MlrA3q0+FG58AQ==";
      };
    };
    "confbox-0.1.8" = {
      name = "confbox";
      packageName = "confbox";
      version = "0.1.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/confbox/-/confbox-0.1.8.tgz";
        sha512 = "RMtmw0iFkeR4YV+fUOSucriAQNb9g8zFR52MWCtl+cCZOFRNL6zeB395vPzFhEjjn4fMxXudmELnl/KF/WrK6w==";
      };
    };
    "consola-3.4.2" = {
      name = "consola";
      packageName = "consola";
      version = "3.4.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/consola/-/consola-3.4.2.tgz";
        sha512 = "5IKcdX0nnYavi6G7TtOhwkYzyjfJlatbjMjuLSfE2kYT5pMDOilZ4OvMhi637CcDICTmz3wARPoyhqyX1Y+XvA==";
      };
    };
    "defu-6.1.4" = {
      name = "defu";
      packageName = "defu";
      version = "6.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/defu/-/defu-6.1.4.tgz";
        sha512 = "mEQCMmwJu317oSz8CwdIOdwf3xMif1ttiM8LTufzc3g6kR+9Pe236twL8j3IYT1F7GfRgGcW6MWxzZjLIkuHIg==";
      };
    };
    "destr-2.0.3" = {
      name = "destr";
      packageName = "destr";
      version = "2.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/destr/-/destr-2.0.3.tgz";
        sha512 = "2N3BOUU4gYMpTP24s5rF5iP7BDr7uNTCs4ozw3kf/eKfvWSIu93GEBi5m427YoyJoeOzQ5smuu4nNAPGb8idSQ==";
      };
    };
    "dotenv-16.4.7" = {
      name = "dotenv";
      packageName = "dotenv";
      version = "16.4.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/dotenv/-/dotenv-16.4.7.tgz";
        sha512 = "47qPchRCykZC03FhkYAhrvwU4xDBFIj1QPqaarj6mdM/hgUzfPHcpkHJOn3mJAufFeeAxAzeGsr5X0M4k6fLZQ==";
      };
    };
    "emmet-2.4.11" = {
      name = "emmet";
      packageName = "emmet";
      version = "2.4.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/emmet/-/emmet-2.4.11.tgz";
        sha512 = "23QPJB3moh/U9sT4rQzGgeyyGIrcM+GH5uVYg2C6wZIxAIJq7Ng3QLT79tl8FUwDXhyq9SusfknOrofAKqvgyQ==";
      };
    };
    "escalade-3.2.0" = {
      name = "escalade";
      packageName = "escalade";
      version = "3.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/escalade/-/escalade-3.2.0.tgz";
        sha512 = "WUj2qlxaQtO4g6Pq5c29GTcWGDyd8itL8zTlipgECz3JesAiiOKotd8JU6otB3PACgG6xkJUyVhboMS+bje/jA==";
      };
    };
    "fdir-6.4.3" = {
      name = "fdir";
      packageName = "fdir";
      version = "6.4.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/fdir/-/fdir-6.4.3.tgz";
        sha512 = "PMXmW2y1hDDfTSRc9gaXIuCCRpuoz3Kaz8cUelp3smouvfT632ozg2vrT6lJsHKKOF59YLbOGfAWGUcKEfRMQw==";
      };
    };
    "fs-minipass-2.1.0" = {
      name = "fs-minipass";
      packageName = "fs-minipass";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fs-minipass/-/fs-minipass-2.1.0.tgz";
        sha512 = "V/JgOLFCS+R6Vcq0slCuaeWEdNC3ouDlJMNIsacH2VtALiu9mV4LPrHc5cDl8k5aw6J8jwgWWpiTo5RYhmIzvg==";
      };
    };
    "giget-1.2.5" = {
      name = "giget";
      packageName = "giget";
      version = "1.2.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/giget/-/giget-1.2.5.tgz";
        sha512 = "r1ekGw/Bgpi3HLV3h1MRBIlSAdHoIMklpaQ3OQLFcRw9PwAj2rqigvIbg+dBUI51OxVI2jsEtDywDBjSiuf7Ug==";
      };
    };
    "jiti-2.4.2" = {
      name = "jiti";
      packageName = "jiti";
      version = "2.4.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/jiti/-/jiti-2.4.2.tgz";
        sha512 = "rg9zJN+G4n2nfJl5MW3BMygZX56zKPNVEYYqq7adpmMh4Jn2QNEwhvQlFy6jPVdcod7txZtKHWnyZiA3a0zP7A==";
      };
    };
    "js-yaml-4.1.0" = {
      name = "js-yaml";
      packageName = "js-yaml";
      version = "4.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/js-yaml/-/js-yaml-4.1.0.tgz";
        sha512 = "wpxZs9NoxZaJESJGIZTyDEaYpl0FKSA+FB9aJiyemKhMwkxQg63h4T1KJgUGHpTqPDNRcmmYLugrRjJlBtWvRA==";
      };
    };
    "jsonc-parser-2.3.1" = {
      name = "jsonc-parser";
      packageName = "jsonc-parser";
      version = "2.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/jsonc-parser/-/jsonc-parser-2.3.1.tgz";
        sha512 = "H8jvkz1O50L3dMZCsLqiuB2tA7muqbSg1AtGEkN0leAqGjsUzDJir3Zwr02BhqdcITPg3ei3mZ+HjMocAknhhg==";
      };
    };
    "jsonc-parser-3.3.1" = {
      name = "jsonc-parser";
      packageName = "jsonc-parser";
      version = "3.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/jsonc-parser/-/jsonc-parser-3.3.1.tgz";
        sha512 = "HUgH65KyejrUFPvHFPbqOY0rsFip3Bo5wb4ngvdi1EpCYWUQDC5V+Y7mZws+DLkr4M//zQJoanu1SP+87Dv1oQ==";
      };
    };
    "kleur-3.0.3" = {
      name = "kleur";
      packageName = "kleur";
      version = "3.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/kleur/-/kleur-3.0.3.tgz";
        sha512 = "eTIzlVOSUR+JxdDFepEYcBMtZ9Qqdef+rnzWdRZuMbOywu5tO2w2N7rqjoANZ5k9vywhL6Br1VRjUIgTQx4E8w==";
      };
    };
    "magicast-0.3.5" = {
      name = "magicast";
      packageName = "magicast";
      version = "0.3.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/magicast/-/magicast-0.3.5.tgz";
        sha512 = "L0WhttDl+2BOsybvEOLK7fW3UA0OQ0IQ2d6Zl2x/a6vVRs3bAY0ECOSHHeL5jD+SbOpOCUEi0y1DgHEn9Qn1AQ==";
      };
    };
    "minipass-3.3.6" = {
      name = "minipass";
      packageName = "minipass";
      version = "3.3.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/minipass/-/minipass-3.3.6.tgz";
        sha512 = "DxiNidxSEK+tHG6zOIklvNOwm3hvCrbUrdtzY74U6HKTJxvIDfOUL5W5P2Ghd3DTkhhKPYGqeNUIh5qcM4YBfw==";
      };
    };
    "minipass-5.0.0" = {
      name = "minipass";
      packageName = "minipass";
      version = "5.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/minipass/-/minipass-5.0.0.tgz";
        sha512 = "3FnjYuehv9k6ovOEbyOswadCDPX1piCfhV8ncmYtHOjuPwylVWsghTLo7rabjC3Rx5xD4HDx8Wm1xnMF7S5qFQ==";
      };
    };
    "minizlib-2.1.2" = {
      name = "minizlib";
      packageName = "minizlib";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/minizlib/-/minizlib-2.1.2.tgz";
        sha512 = "bAxsR8BVfj60DWXHE3u30oHzfl4G7khkSuPW+qvpd7jFRHm7dLxOjUk1EHACJ/hxLY8phGJ0YhYHZo7jil7Qdg==";
      };
    };
    "mkdirp-1.0.4" = {
      name = "mkdirp";
      packageName = "mkdirp";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/mkdirp/-/mkdirp-1.0.4.tgz";
        sha512 = "vVqVZQyf3WLx2Shd0qJ9xuvqgAyKPLAiqITEtqW0oIUjzo3PePDd6fW9iFz30ef7Ysp/oiWqbhszeGWW2T6Gzw==";
      };
    };
    "mlly-1.7.4" = {
      name = "mlly";
      packageName = "mlly";
      version = "1.7.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/mlly/-/mlly-1.7.4.tgz";
        sha512 = "qmdSIPC4bDJXgZTCR7XosJiNKySV7O215tsPtDN9iEO/7q/76b/ijtgRu/+epFXSJhijtTCCGp3DWS549P3xKw==";
      };
    };
    "node-fetch-native-1.6.6" = {
      name = "node-fetch-native";
      packageName = "node-fetch-native";
      version = "1.6.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/node-fetch-native/-/node-fetch-native-1.6.6.tgz";
        sha512 = "8Mc2HhqPdlIfedsuZoc3yioPuzp6b+L5jRCRY1QzuWZh2EGJVQrGppC6V6cF0bLdbW0+O2YpqCA25aF/1lvipQ==";
      };
    };
    "nypm-0.5.4" = {
      name = "nypm";
      packageName = "nypm";
      version = "0.5.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/nypm/-/nypm-0.5.4.tgz";
        sha512 = "X0SNNrZiGU8/e/zAB7sCTtdxWTMSIO73q+xuKgglm2Yvzwlo8UoC5FNySQFCvl84uPaeADkqHUZUkWy4aH4xOA==";
      };
    };
    "ohash-2.0.11" = {
      name = "ohash";
      packageName = "ohash";
      version = "2.0.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/ohash/-/ohash-2.0.11.tgz";
        sha512 = "RdR9FQrFwNBNXAr4GixM8YaRZRJ5PUWbKYbE5eOsrwAjJW0q2REGcf79oYPsLyskQCZG1PLN+S/K1V00joZAoQ==";
      };
    };
    "package-manager-detector-0.2.11" = {
      name = "package-manager-detector";
      packageName = "package-manager-detector";
      version = "0.2.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/package-manager-detector/-/package-manager-detector-0.2.11.tgz";
        sha512 = "BEnLolu+yuz22S56CU1SUKq3XC3PkwD5wv4ikR4MfGvnRVcmzXR9DwSlW2fEamyTPyXHomBJRzgapeuBvRNzJQ==";
      };
    };
    "pathe-2.0.3" = {
      name = "pathe";
      packageName = "pathe";
      version = "2.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/pathe/-/pathe-2.0.3.tgz";
        sha512 = "WUjGcAqP1gQacoQe+OBJsFA7Ld4DyXuUIjZ5cc75cLHvJ7dtNsTugphxIADwspS+AraAUePCKrSVtPLFj/F88w==";
      };
    };
    "perfect-debounce-1.0.0" = {
      name = "perfect-debounce";
      packageName = "perfect-debounce";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/perfect-debounce/-/perfect-debounce-1.0.0.tgz";
        sha512 = "xCy9V055GLEqoFaHoC1SoLIaLmWctgCUaBaWxDZ7/Zx4CTyX7cJQLJOok/orfjZAh9kEYpjJa4d0KcJmCbctZA==";
      };
    };
    "picomatch-4.0.2" = {
      name = "picomatch";
      packageName = "picomatch";
      version = "4.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/picomatch/-/picomatch-4.0.2.tgz";
        sha512 = "M7BAV6Rlcy5u+m6oPhAPFgJTzAioX/6B0DxyvDlo9l8+T3nLKbrczg2WLUyzd45L8RqfUMyGPzekbMvX2Ldkwg==";
      };
    };
    "pkg-types-1.3.1" = {
      name = "pkg-types";
      packageName = "pkg-types";
      version = "1.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pkg-types/-/pkg-types-1.3.1.tgz";
        sha512 = "/Jm5M4RvtBFVkKWRu2BLUTNP8/M2a+UwuAX+ae4770q1qVGtfjG+WTCupoZixokjmHiry8uI+dlY8KXYV5HVVQ==";
      };
    };
    "prompts-2.4.2" = {
      name = "prompts";
      packageName = "prompts";
      version = "2.4.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/prompts/-/prompts-2.4.2.tgz";
        sha512 = "NxNv/kLguCA7p3jE8oL2aEBsrJWgAakBpgmgK6lpPWV+WuOmY6r2/zbAVnP+T8bQlA0nzHXSJSJW0Hq7ylaD2Q==";
      };
    };
    "quansync-0.2.10" = {
      name = "quansync";
      packageName = "quansync";
      version = "0.2.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/quansync/-/quansync-0.2.10.tgz";
        sha512 = "t41VRkMYbkHyCYmOvx/6URnN80H7k4X0lLdBMGsz+maAwrJQYB1djpV6vHrQIBE0WBSGqhtEHrK9U3DWWH8v7A==";
      };
    };
    "rc9-2.1.2" = {
      name = "rc9";
      packageName = "rc9";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/rc9/-/rc9-2.1.2.tgz";
        sha512 = "btXCnMmRIBINM2LDZoEmOogIZU7Qe7zn4BpomSKZ/ykbLObuBdvG+mFq11DL6fjH1DRwHhrlgtYWG96bJiC7Cg==";
      };
    };
    "readdirp-4.1.2" = {
      name = "readdirp";
      packageName = "readdirp";
      version = "4.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/readdirp/-/readdirp-4.1.2.tgz";
        sha512 = "GDhwkLfywWL2s6vEjyhri+eXmfH6j1L7JE27WhqLeYzoh/A3DBaYGEj2H/HFZCn/kMfim73FXxEJTw06WtxQwg==";
      };
    };
    "semver-7.7.1" = {
      name = "semver";
      packageName = "semver";
      version = "7.7.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/semver/-/semver-7.7.1.tgz";
        sha512 = "hlq8tAfn0m/61p4BVRcPzIGr6LKiMwo4VM6dGi6pt4qcRkmNzTcWq6eCEjEh+qXjkMDvPlOFFSGwQjoEa6gyMA==";
      };
    };
    "sisteransi-1.0.5" = {
      name = "sisteransi";
      packageName = "sisteransi";
      version = "1.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/sisteransi/-/sisteransi-1.0.5.tgz";
        sha512 = "bLGGlR1QxBcynn2d5YmDX4MGjlZvy2MRBDRNHLJ8VI6l6+9FUiyTFNJ0IveOSP0bcXgVDPRcfGqA0pjaqUpfVg==";
      };
    };
    "source-map-js-1.2.1" = {
      name = "source-map-js";
      packageName = "source-map-js";
      version = "1.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map-js/-/source-map-js-1.2.1.tgz";
        sha512 = "UXWMKhLOwVKb728IUtQPXxfYU+usdybtUrK/8uGE8CQMvrhOpwvzDBwj0QhSL7MQc7vIsISBG8VQ8+IDQxpfQA==";
      };
    };
    "tar-6.2.1" = {
      name = "tar";
      packageName = "tar";
      version = "6.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/tar/-/tar-6.2.1.tgz";
        sha512 = "DZ4yORTwrbTj/7MZYq2w+/ZFdI6OZ/f9SFHR+71gIVUZhOQPHzVCLpvRnPgyaMpfWxxk/4ONva3GQSyNIKRv6A==";
      };
    };
    "tiny-conventional-commits-parser-0.0.1" = {
      name = "tiny-conventional-commits-parser";
      packageName = "tiny-conventional-commits-parser";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/tiny-conventional-commits-parser/-/tiny-conventional-commits-parser-0.0.1.tgz";
        sha512 = "N5+AZWdBeHNSgTIaxvx0+9mFrnW4H1BbjQ84H7i3TuWSkno8Hju886hLaHZhE/hYEKrfrfl/uHurqpZJHDuYGQ==";
      };
    };
    "tinyexec-0.3.2" = {
      name = "tinyexec";
      packageName = "tinyexec";
      version = "0.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/tinyexec/-/tinyexec-0.3.2.tgz";
        sha512 = "KQQR9yN7R5+OSwaK0XQoj22pwHoTlgYqmUscPYoknOoWCWfj/5/ABTMRi69FrKU5ffPVh5QcFikpWJI/P1ocHA==";
      };
    };
    "tinyglobby-0.2.12" = {
      name = "tinyglobby";
      packageName = "tinyglobby";
      version = "0.2.12";
      src = fetchurl {
        url = "https://registry.npmjs.org/tinyglobby/-/tinyglobby-0.2.12.tgz";
        sha512 = "qkf4trmKSIiMTs/E63cxH+ojC2unam7rJ0WrauAzpT3ECNTxGRMlaXxVbfxMUC/w0LaYk6jQ4y/nGR9uBO3tww==";
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
    "ufo-1.5.4" = {
      name = "ufo";
      packageName = "ufo";
      version = "1.5.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/ufo/-/ufo-1.5.4.tgz";
        sha512 = "UsUk3byDzKd04EyoZ7U4DOlxQaD14JUKQl6/P7wiX4FNvUfm3XL246n9W5AmqwW5RSFJ27NAuM0iLscAOYUiGQ==";
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
    "vscode-jsonrpc-8.2.0" = {
      name = "vscode-jsonrpc";
      packageName = "vscode-jsonrpc";
      version = "8.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-jsonrpc/-/vscode-jsonrpc-8.2.0.tgz";
        sha512 = "C+r0eKJUIfiDIfwJhria30+TYWPtuHJXHtI7J0YlOmKAo7ogxP20T0zxB7HZQIFhIyvoBPwWskjxrvAtfjyZfA==";
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
    "vscode-languageserver-9.0.1" = {
      name = "vscode-languageserver";
      packageName = "vscode-languageserver";
      version = "9.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver/-/vscode-languageserver-9.0.1.tgz";
        sha512 = "woByF3PDpkHFUreUa7Hos7+pUWdeWMXRd26+ZX2A8cFx6v/JPTtd4/uN0/jB6XQHYaOlHbio03NTHCqrgG5n7g==";
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
    "vscode-languageserver-protocol-3.17.5" = {
      name = "vscode-languageserver-protocol";
      packageName = "vscode-languageserver-protocol";
      version = "3.17.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-protocol/-/vscode-languageserver-protocol-3.17.5.tgz";
        sha512 = "mb1bvRJN8SVznADSGWM9u/b07H7Ecg0I3OgXDuLdn307rl/J3A9YD6/eYOssqhecL27hK1IPZAsaqh00i/Jljg==";
      };
    };
    "vscode-languageserver-textdocument-1.0.12" = {
      name = "vscode-languageserver-textdocument";
      packageName = "vscode-languageserver-textdocument";
      version = "1.0.12";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-textdocument/-/vscode-languageserver-textdocument-1.0.12.tgz";
        sha512 = "cxWNPesCnQCcMPeenjKKsOCKQZ/L6Tv19DTRIGuLWe32lyzWhihGVJ/rcckZXJxfdKCFvRLS3fpBIsV/ZGX4zA==";
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
    "vscode-languageserver-types-3.17.5" = {
      name = "vscode-languageserver-types";
      packageName = "vscode-languageserver-types";
      version = "3.17.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-types/-/vscode-languageserver-types-3.17.5.tgz";
        sha512 = "Ld1VelNuX9pdF39h2Hgaeb5hEZM2Z3jUrrMgWQAu82jMtZp7p3vJT3BzToKtZI7NgQssZje5o0zryOrhQvzQAg==";
      };
    };
    "vscode-uri-3.1.0" = {
      name = "vscode-uri";
      packageName = "vscode-uri";
      version = "3.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-uri/-/vscode-uri-3.1.0.tgz";
        sha512 = "/BpdSx+yCQGnCvecbyXdxHDkuk55/G3xwnC0GqY4gmQ3j+A+g8kzzgB4Nk/SINjqn6+waqw3EgbVF2QKExkRxQ==";
      };
    };
    "yallist-4.0.0" = {
      name = "yallist";
      packageName = "yallist";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/yallist/-/yallist-4.0.0.tgz";
        sha512 = "3wdGidZyq5PB084XLES5TpOSRA3wjXAlIWMhum2kRcv/41Sn2emQ0dycQW4uZXLejwKvg6EsvbdlVL+FYEct7A==";
      };
    };
  };
in {
  "@tailwindcss/language-server" = nodeEnv.buildNodePackage {
    name = "_at_tailwindcss_slash_language-server";
    packageName = "@tailwindcss/language-server";
    version = "0.14.9";
    src = fetchurl {
      url = "https://registry.npmjs.org/@tailwindcss/language-server/-/language-server-0.14.9.tgz";
      sha512 = "t9tXYWWkLdfd3PrOZD+xF+B2a1tE5GI6VJu5dVw6wI5mSR3gmUPXEx4QF1vd7Ox7/tP+5a3faGhrp0BjCawPtw==";
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
    version = "0.4.2";
    src = fetchurl {
      url = "https://registry.npmjs.org/emmet-ls/-/emmet-ls-0.4.2.tgz";
      sha512 = "nwiUsbph9c4TkZjrKb7OqrUG6XQ3AxmmVn3IDR6FTx/xLLAegpmSxfOrvvPADbz9vOkSP6jjShpux1tNrqqIkQ==";
    };
    dependencies = [
      sources."@emmetio/abbreviation-2.3.3"
      sources."@emmetio/css-abbreviation-2.1.8"
      sources."@emmetio/scanner-1.0.4"
      sources."@types/node-17.0.45"
      sources."emmet-2.4.11"
      sources."typescript-4.9.5"
      sources."vscode-jsonrpc-6.0.0"
      sources."vscode-languageserver-7.0.0"
      sources."vscode-languageserver-protocol-3.16.0"
      sources."vscode-languageserver-textdocument-1.0.12"
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
  "@olrtg/emmet-language-server" = nodeEnv.buildNodePackage {
    name = "_at_olrtg_slash_emmet-language-server";
    packageName = "@olrtg/emmet-language-server";
    version = "2.6.1";
    src = fetchurl {
      url = "https://registry.npmjs.org/@olrtg/emmet-language-server/-/emmet-language-server-2.6.1.tgz";
      sha512 = "Ie5uRQLJakzDxncCnzmghypOaLxcgbfU8vP30qbNrukg+b2bBp05w0acBDm9Bz/JPgCzbVtcbKnci+gxIUjYQA==";
    };
    dependencies = [
      sources."@babel/helper-string-parser-7.25.9"
      sources."@babel/helper-validator-identifier-7.25.9"
      sources."@babel/parser-7.26.10"
      sources."@babel/types-7.26.10"
      sources."@emmetio/abbreviation-2.3.3"
      sources."@emmetio/css-abbreviation-2.1.8"
      sources."@emmetio/scanner-1.0.4"
      sources."@vscode/emmet-helper-2.11.0"
      sources."acorn-8.14.1"
      sources."argparse-2.0.1"
      (sources."bumpp-9.11.1"
        // {
          dependencies = [
            sources."jsonc-parser-3.3.1"
          ];
        })
      sources."c12-2.0.4"
      sources."cac-6.7.14"
      sources."chokidar-4.0.3"
      sources."chownr-2.0.0"
      sources."citty-0.1.6"
      sources."confbox-0.1.8"
      sources."consola-3.4.2"
      sources."defu-6.1.4"
      sources."destr-2.0.3"
      sources."dotenv-16.4.7"
      sources."emmet-2.4.11"
      sources."escalade-3.2.0"
      sources."fdir-6.4.3"
      (sources."fs-minipass-2.1.0"
        // {
          dependencies = [
            sources."minipass-3.3.6"
          ];
        })
      sources."giget-1.2.5"
      sources."jiti-2.4.2"
      sources."js-yaml-4.1.0"
      sources."jsonc-parser-2.3.1"
      sources."kleur-3.0.3"
      sources."magicast-0.3.5"
      sources."minipass-5.0.0"
      (sources."minizlib-2.1.2"
        // {
          dependencies = [
            sources."minipass-3.3.6"
          ];
        })
      sources."mkdirp-1.0.4"
      sources."mlly-1.7.4"
      sources."node-fetch-native-1.6.6"
      sources."nypm-0.5.4"
      sources."ohash-2.0.11"
      sources."package-manager-detector-0.2.11"
      sources."pathe-2.0.3"
      sources."perfect-debounce-1.0.0"
      sources."picomatch-4.0.2"
      sources."pkg-types-1.3.1"
      sources."prompts-2.4.2"
      sources."quansync-0.2.10"
      sources."rc9-2.1.2"
      sources."readdirp-4.1.2"
      sources."semver-7.7.1"
      sources."sisteransi-1.0.5"
      sources."source-map-js-1.2.1"
      sources."tar-6.2.1"
      sources."tiny-conventional-commits-parser-0.0.1"
      sources."tinyexec-0.3.2"
      sources."tinyglobby-0.2.12"
      sources."ufo-1.5.4"
      sources."vscode-jsonrpc-8.2.0"
      sources."vscode-languageserver-9.0.1"
      sources."vscode-languageserver-protocol-3.17.5"
      sources."vscode-languageserver-textdocument-1.0.12"
      sources."vscode-languageserver-types-3.17.5"
      sources."vscode-uri-3.1.0"
      sources."yallist-4.0.0"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "A language server for emmet.io";
      homepage = "https://github.com/olrtg/emmet-language-server#readme";
      license = "MIT";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
}
