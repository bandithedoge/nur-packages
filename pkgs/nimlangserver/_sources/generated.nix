# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  bearssl = {
    pname = "bearssl";
    version = "953a795b96d73a7401e7a1041587da9ffe6d78f6";
    src = fetchgit {
      url = "https://github.com/status-im/nim-bearssl";
      rev = "953a795b96d73a7401e7a1041587da9ffe6d78f6";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
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
      sparseCheckout = [ ];
      sha256 = "sha256-H1nyYsIe8DMhINo9EDjuCEYl2LTWwEuLxrggXHdQ79c=";
    };
    date = "2024-10-15";
  };
  chronos = {
    pname = "chronos";
    version = "9186950e03254b87533715f7c991a537b3167bef";
    src = fetchgit {
      url = "https://github.com/status-im/nim-chronos";
      rev = "9186950e03254b87533715f7c991a537b3167bef";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-pW2/8chlsbuwlBIT7wg3jAWhfDmQMXD3eGkSzIY3CaY=";
    };
    date = "2024-10-15";
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
      sparseCheckout = [ ];
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
      sparseCheckout = [ ];
      sha256 = "sha256-hFJrcHfem3Mlc8WaPtp6shw1wT5ADuTORBrIkLDRD10=";
    };
    date = "2024-10-15";
  };
  json-rpc = {
    pname = "json-rpc";
    version = "31af0f2bda1486ffb7326c5df1dc47dc63d73fff";
    src = fetchgit {
      url = "https://github.com/status-im/nim-json-rpc";
      rev = "31af0f2bda1486ffb7326c5df1dc47dc63d73fff";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-tgeQYOXvsK6qhAheIv9nS+71SRCqfI1KFzoq74TOS+8=";
    };
    date = "2024-10-29";
  };
  json_serialization = {
    pname = "json_serialization";
    version = "6eadb6e939ffa7882ff5437033c11a9464d3385c";
    src = fetchgit {
      url = "https://github.com/status-im/nim-json-serialization";
      rev = "6eadb6e939ffa7882ff5437033c11a9464d3385c";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-Ci1l91tLaYgnoipIc74pNdiQSkmzz98L9ulDwsuehQM=";
    };
    date = "2024-10-19";
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
      sparseCheckout = [ ];
      sha256 = "sha256-ibSjXv2M/uAkvDpRKuSFOQrbcwygNTXap97TlOwqRNo=";
    };
    date = "2024-10-14";
  };
  nimlangserver = {
    pname = "nimlangserver";
    version = "238e968888d438c1b346c2533fb9082bffa4c9ff";
    src = fetchgit {
      url = "https://github.com/nim-lang/langserver";
      rev = "238e968888d438c1b346c2533fb9082bffa4c9ff";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-7M6VzhI8BJ2Z70KJOeHxb/oclYCG4Ka4v37Swq66ddE=";
    };
    date = "2024-10-31";
  };
  regex = {
    pname = "regex";
    version = "v0.25.0";
    src = fetchFromGitHub {
      owner = "nitely";
      repo = "nim-regex";
      rev = "v0.25.0";
      fetchSubmodules = false;
      sha256 = "sha256-H04fpa5zpLFAY8gScQ6rYt8TYKmtlQus2O0EoXcu970=";
    };
  };
  results = {
    pname = "results";
    version = "71d404b314479a6205bfd050f4fe5fe49cdafc69";
    src = fetchgit {
      url = "https://github.com/arnetheduck/nim-results";
      rev = "71d404b314479a6205bfd050f4fe5fe49cdafc69";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-g8A5uNQ9cdjDqdBeLVfpOTVApDyM5Ek5a7B0OqOCX2A=";
    };
    date = "2024-08-22";
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
      sparseCheckout = [ ];
      sha256 = "sha256-LPNNuMMilaY2PGR8+NUAUTb/W7Pu1tLmMYFn1fdK7NQ=";
    };
    date = "2024-10-23";
  };
  stew = {
    pname = "stew";
    version = "a6e198132097fb544d04959aeb3b839e1408f942";
    src = fetchgit {
      url = "https://github.com/status-im/nim-stew";
      rev = "a6e198132097fb544d04959aeb3b839e1408f942";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-hULE2IQ6N/QyrATw9R/cRDTa7JJhAH63xX9JX40zMz0=";
    };
    date = "2024-10-15";
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
    version = "53c2ba2696ac5ad72a70b36d0711a0837f0b1c8f";
    src = fetchgit {
      url = "https://github.com/status-im/nim-websock";
      rev = "53c2ba2696ac5ad72a70b36d0711a0837f0b1c8f";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-WbeSVOQghJz+5AEOsZRT8zj9o/8ykrn/aeEwMcooBG4=";
    };
    date = "2024-10-29";
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
      sparseCheckout = [ ];
      sha256 = "sha256-LRD72ShN8FXIeYTQhr4WkxlS8zP3OUegmzez3HUpW9I=";
    };
    date = "2024-10-15";
  };
}
