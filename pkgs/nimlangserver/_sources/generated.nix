# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  bearssl = {
    pname = "bearssl";
    version = "953a795b96d73a7401e7a1041587da9ffe6d78f6";
    src = fetchgit {
      url = "https://github.com/status-im/nim-bearssl";
      rev = "953a795b96d73a7401e7a1041587da9ffe6d78f6";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-eBuneV6DnuYykoTKeUoKaZ9vcAe7ukCeM0LkzRZi13U=";
    };
    date = "2024-10-15";
  };
  chronicles = {
    pname = "chronicles";
    version = "81a4a7a360c78be9c80c8f735c76b6d4a1517304";
    src = fetchgit {
      url = "https://github.com/status-im/nim-chronicles";
      rev = "81a4a7a360c78be9c80c8f735c76b6d4a1517304";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-H1nyYsIe8DMhINo9EDjuCEYl2LTWwEuLxrggXHdQ79c=";
    };
    date = "2024-10-15";
  };
  chronos = {
    pname = "chronos";
    version = "03f4328de6135a06830103fdfd1d0aeb9bc8a1c8";
    src = fetchgit {
      url = "https://github.com/status-im/nim-chronos";
      rev = "03f4328de6135a06830103fdfd1d0aeb9bc8a1c8";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-ClcwZzCIeXpkjV+25CSFqPEAZz3msVwJcWc3QKUcWuk=";
    };
    date = "2024-11-28";
  };
  faststreams = {
    pname = "faststreams";
    version = "cf8d4d22636b8e514caf17e49f9c786ac56b0e85";
    src = fetchgit {
      url = "https://github.com/status-im/nim-faststreams";
      rev = "cf8d4d22636b8e514caf17e49f9c786ac56b0e85";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-umvWQ6MxaYsHn8eXb24kl7bmEUXQzeiEgFQSTzNm8S8=";
    };
    date = "2024-10-29";
  };
  httputils = {
    pname = "httputils";
    version = "8bb1acbaa4b86eb866145b0d468eff64a57d1897";
    src = fetchgit {
      url = "https://github.com/status-im/nim-http-utils";
      rev = "8bb1acbaa4b86eb866145b0d468eff64a57d1897";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-hFJrcHfem3Mlc8WaPtp6shw1wT5ADuTORBrIkLDRD10=";
    };
    date = "2024-10-15";
  };
  json-rpc = {
    pname = "json-rpc";
    version = "08a751bba51c234d5b3a81bada1901cdd1964d8f";
    src = fetchgit {
      url = "https://github.com/status-im/nim-json-rpc";
      rev = "08a751bba51c234d5b3a81bada1901cdd1964d8f";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-OefEQDwfbE+o3mSotrISHfXvp49FjeMVDgkH7rEUsRA=";
    };
    date = "2024-12-27";
  };
  json_serialization = {
    pname = "json_serialization";
    version = "cb54306f712655116df073ad7194c45aa515a6ab";
    src = fetchgit {
      url = "https://github.com/status-im/nim-json-serialization";
      rev = "cb54306f712655116df073ad7194c45aa515a6ab";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-UEOc3PrPSbmWHjH7l+h9WRiL3g7o7UwC/lvjPwBePuU=";
    };
    date = "2024-11-26";
  };
  nimcrypto = {
    pname = "nimcrypto";
    version = "dc07e3058c6904eef965394493b6ea99aa2adefc";
    src = fetchgit {
      url = "https://github.com/cheatfate/nimcrypto";
      rev = "dc07e3058c6904eef965394493b6ea99aa2adefc";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-ibSjXv2M/uAkvDpRKuSFOQrbcwygNTXap97TlOwqRNo=";
    };
    date = "2024-10-14";
  };
  nimlangserver = {
    pname = "nimlangserver";
    version = "0c287fe98603117df4742bcaf9d3027bb938808d";
    src = fetchgit {
      url = "https://github.com/nim-lang/langserver";
      rev = "0c287fe98603117df4742bcaf9d3027bb938808d";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-Z3998AYqqYwnAVtOi6S6K/4JaqN+lX6d1dDQiB4OM1I=";
    };
    date = "2024-12-27";
  };
  regex = {
    pname = "regex";
    version = "v0.26.0";
    src = fetchFromGitHub {
      owner = "nitely";
      repo = "nim-regex";
      rev = "v0.26.0";
      fetchSubmodules = false;
      sha256 = "sha256-5YjPkUZc1Xho1KAqH1BamZEuL7SRKtQ5aKuixA+cDCM=";
    };
  };
  results = {
    pname = "results";
    version = "df8113dda4c2d74d460a8fa98252b0b771bf1f27";
    src = fetchgit {
      url = "https://github.com/arnetheduck/nim-results";
      rev = "df8113dda4c2d74d460a8fa98252b0b771bf1f27";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-KbNqt0FMuzDF4X+XM6JEaZJBypLDnvVPpnBpE7Sq6sA=";
    };
    date = "2024-12-07";
  };
  serialization = {
    pname = "serialization";
    version = "2086c99608b4bf472e1ef5fe063710f280243396";
    src = fetchgit {
      url = "https://github.com/status-im/nim-serialization";
      rev = "2086c99608b4bf472e1ef5fe063710f280243396";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-LPNNuMMilaY2PGR8+NUAUTb/W7Pu1tLmMYFn1fdK7NQ=";
    };
    date = "2024-10-23";
  };
  stew = {
    pname = "stew";
    version = "79e4fa5a9d3374db17ed63622714d3e1094c7f34";
    src = fetchgit {
      url = "https://github.com/status-im/nim-stew";
      rev = "79e4fa5a9d3374db17ed63622714d3e1094c7f34";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-GWB/7XzOv59lDPeyvG5joOIkkwmmHQOmKp1/1u3TInU=";
    };
    date = "2024-12-04";
  };
  unicodedb = {
    pname = "unicodedb";
    version = "v0.13.0";
    src = fetchFromGitHub {
      owner = "nitely";
      repo = "nim-unicodedb";
      rev = "v0.13.0";
      fetchSubmodules = false;
      sha256 = "sha256-0khAhu84SI+/noc0SzQggH2NGgZ9FMqu1ASq4nWtRo8=";
    };
  };
  websock = {
    pname = "websock";
    version = "ebe308a79a7b440a11dfbe74f352be86a3883508";
    src = fetchgit {
      url = "https://github.com/status-im/nim-websock";
      rev = "ebe308a79a7b440a11dfbe74f352be86a3883508";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-jUWaxH8uhLufJbXS2Zp1eKBsZVJWA6+V6y3+BUGH83c=";
    };
    date = "2024-11-28";
  };
  zevv-with = {
    pname = "zevv-with";
    version = "v0.5.0";
    src = fetchFromGitHub {
      owner = "zevv";
      repo = "with";
      rev = "v0.5.0";
      fetchSubmodules = false;
      sha256 = "sha256-3Cj31lvBHQnfMSOBnNbBdiDXo8bpLGLwfVN3heYBMJU=";
    };
  };
  zlib = {
    pname = "zlib";
    version = "91cf360b1aeb2e0c753ff8bac6de22a41c5ed8cd";
    src = fetchgit {
      url = "https://github.com/status-im/nim-zlib";
      rev = "91cf360b1aeb2e0c753ff8bac6de22a41c5ed8cd";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-LRD72ShN8FXIeYTQhr4WkxlS8zP3OUegmzez3HUpW9I=";
    };
    date = "2024-10-15";
  };
}
