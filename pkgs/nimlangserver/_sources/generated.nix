# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  bearssl = {
    pname = "bearssl";
    version = "667b40440a53a58e9f922e29e20818720c62d9ac";
    src = fetchgit {
      url = "https://github.com/status-im/nim-bearssl";
      rev = "667b40440a53a58e9f922e29e20818720c62d9ac";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-mlSUqAbDEk72AjZX4Wbhh/oJ64wxUfc/he2fe15ylSg=";
    };
    date = "2024-07-18";
  };
  chronicles = {
    pname = "chronicles";
    version = "4524912fcacfd3965e32a9fe23c9bb12d48177ff";
    src = fetchgit {
      url = "https://github.com/status-im/nim-chronicles";
      rev = "4524912fcacfd3965e32a9fe23c9bb12d48177ff";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-89Siu/W7SC+D9EYUrKXyhAYgERgg2OIfFAYRaPegNEA=";
    };
    date = "2024-09-23";
  };
  chronos = {
    pname = "chronos";
    version = "c04576d829b8a0a1b12baaa8bc92037501b3a4a0";
    src = fetchgit {
      url = "https://github.com/status-im/nim-chronos";
      rev = "c04576d829b8a0a1b12baaa8bc92037501b3a4a0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-qaNiuqi0MIFArJDHL9HorjggyHkmEHFT0TGS2GtVnF4=";
    };
    date = "2024-08-22";
  };
  faststreams = {
    pname = "faststreams";
    version = "081ddc2cb0c6b6d066120bec26de3ab9db23404e";
    src = fetchgit {
      url = "https://github.com/status-im/nim-faststreams";
      rev = "081ddc2cb0c6b6d066120bec26de3ab9db23404e";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-6NJ8z5wtv8i4Jq1xMxM79OG6YCNnpAwlP4Siy9MIi/w=";
    };
    date = "2024-09-12";
  };
  httputils = {
    pname = "httputils";
    version = "e8fc71aee15203a852f6321e4dd8d87517502847";
    src = fetchgit {
      url = "https://github.com/status-im/nim-http-utils";
      rev = "e8fc71aee15203a852f6321e4dd8d87517502847";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-COmzrmEplEOhQ2xAyaGw2VdhUUNzj4VTlt/YHccAyXs=";
    };
    date = "2024-09-11";
  };
  json-rpc = {
    pname = "json-rpc";
    version = "be16a6528acfcfdaab381c4900240e454f7cdc63";
    src = fetchgit {
      url = "https://github.com/status-im/nim-json-rpc";
      rev = "be16a6528acfcfdaab381c4900240e454f7cdc63";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-sdOO2zFZHP4m1UXt05xensLt9BLvkQ13LUbyNVm1efQ=";
    };
    date = "2024-10-04";
  };
  json_serialization = {
    pname = "json_serialization";
    version = "ab1a061756bb6fc2e0f98cb57852f2bb0c6f9772";
    src = fetchgit {
      url = "https://github.com/status-im/nim-json-serialization";
      rev = "ab1a061756bb6fc2e0f98cb57852f2bb0c6f9772";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-Xx5rB9zI3bETGd5BZvcrZIy6zjsLdMe2azgUwlmPRiQ=";
    };
    date = "2024-09-30";
  };
  nimcrypto = {
    pname = "nimcrypto";
    version = "a0b65f2a0dba987c75eadf03f811fb5508fd3372";
    src = fetchgit {
      url = "https://github.com/cheatfate/nimcrypto";
      rev = "a0b65f2a0dba987c75eadf03f811fb5508fd3372";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-3wCHB8gZB6xDbGZBPxBh7bK/yq4GlDGYOQScpxKFyD4=";
    };
    date = "2024-09-23";
  };
  nimlangserver = {
    pname = "nimlangserver";
    version = "5ccf289d667b57e998c772d39925a08865b35623";
    src = fetchgit {
      url = "https://github.com/nim-lang/langserver";
      rev = "5ccf289d667b57e998c772d39925a08865b35623";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-OI+90aVbQIlaP9sPtH6Zf45SPtxXQm8df8/tAbr2gIU=";
    };
    date = "2024-10-01";
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
      sparseCheckout = [];
      sha256 = "sha256-g8A5uNQ9cdjDqdBeLVfpOTVApDyM5Ek5a7B0OqOCX2A=";
    };
    date = "2024-08-22";
  };
  serialization = {
    pname = "serialization";
    version = "7950ac1e8c9f0019c798f97ab1fe1d9367cc2e6d";
    src = fetchgit {
      url = "https://github.com/status-im/nim-serialization";
      rev = "7950ac1e8c9f0019c798f97ab1fe1d9367cc2e6d";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-RKW8Ewsz3+9SbimSsxeV4garuxdGPfDATssxz7uqLXU=";
    };
    date = "2024-09-30";
  };
  stew = {
    pname = "stew";
    version = "763147cf821ea105936502e029ac9f5cfad86568";
    src = fetchgit {
      url = "https://github.com/status-im/nim-stew";
      rev = "763147cf821ea105936502e029ac9f5cfad86568";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-NffTtV+J08Amw+xFa3rqZF9zNtBiA+ylzFK8uhEPtgY=";
    };
    date = "2024-10-07";
  };
  websock = {
    pname = "websock";
    version = "179f81dedaddb5ba8d02534ccc8b7a8335981f49";
    src = fetchgit {
      url = "https://github.com/status-im/nim-websock";
      rev = "179f81dedaddb5ba8d02534ccc8b7a8335981f49";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-8XMSa0K43QBk+o3n7pwqKLk9feiRBPeDksrfY/orgxI=";
    };
    date = "2024-09-11";
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
    version = "02311a35623964a3ef37da8cd896ed95be06e6da";
    src = fetchgit {
      url = "https://github.com/status-im/nim-zlib";
      rev = "02311a35623964a3ef37da8cd896ed95be06e6da";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-pmqQWQGAOVKeOuclHN+1itMz5kzeJ26FekhteEn9voA=";
    };
    date = "2024-09-11";
  };
}
