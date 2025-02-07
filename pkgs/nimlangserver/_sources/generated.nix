# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  bearssl = {
    pname = "bearssl";
    version = "c7683c5a6221605bbab31b53d01feb3a3161bb8b";
    src = fetchgit {
      url = "https://github.com/status-im/nim-bearssl";
      rev = "c7683c5a6221605bbab31b53d01feb3a3161bb8b";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-pWhbLdHpKI/rXM8QJ64J6MUdjgEwVSnVvOXeyNoRx+c=";
    };
    date = "2025-01-13";
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
    version = "0646c444fce7c7ed08ef6f2c9a7abfd172ffe655";
    src = fetchgit {
      url = "https://github.com/status-im/nim-chronos";
      rev = "0646c444fce7c7ed08ef6f2c9a7abfd172ffe655";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-qfqSq36cDegNBBNObPOtwQ/4AJWPt/bgwdJCCqhMieQ=";
    };
    date = "2025-02-06";
  };
  faststreams = {
    pname = "faststreams";
    version = "2b08c774afaafd600cf4c6f994cf78b8aa090c0c";
    src = fetchgit {
      url = "https://github.com/status-im/nim-faststreams";
      rev = "2b08c774afaafd600cf4c6f994cf78b8aa090c0c";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-+gafotMYZSisQgdJ9dVoiLmmvgd+oR0CklI3eItK9IM=";
    };
    date = "2025-01-13";
  };
  httputils = {
    pname = "httputils";
    version = "79cbab1460f4c0cdde2084589d017c43a3d7b4f1";
    src = fetchgit {
      url = "https://github.com/status-im/nim-http-utils";
      rev = "79cbab1460f4c0cdde2084589d017c43a3d7b4f1";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-Coab9jUKiI/ik/KKLupZv/33rJzxeJ6L1HtIq9DJzpI=";
    };
    date = "2025-01-13";
  };
  json-rpc = {
    pname = "json-rpc";
    version = "c0ac848733e42e672081f429fb146451894f7711";
    src = fetchgit {
      url = "https://github.com/status-im/nim-json-rpc";
      rev = "c0ac848733e42e672081f429fb146451894f7711";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-8oxOBPdvNIYSGwg7AiYwppBfiBCxgWYJD7oR7tsvz84=";
    };
    date = "2025-01-13";
  };
  json_serialization = {
    pname = "json_serialization";
    version = "2b1c5eb11df3647a2cee107cd4cce3593cbb8bcf";
    src = fetchgit {
      url = "https://github.com/status-im/nim-json-serialization";
      rev = "2b1c5eb11df3647a2cee107cd4cce3593cbb8bcf";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-UkU0MpfzQuS21Up12A12RjEyBFBNvvb6d2/3u/jtgT0=";
    };
    date = "2025-01-13";
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
    version = "v1.8.1";
    src = fetchFromGitHub {
      owner = "nim-lang";
      repo = "langserver";
      rev = "v1.8.1";
      fetchSubmodules = false;
      sha256 = "sha256-j5YnTGPtt0WhRvNfpgO9tjAqZJA5Kt1FE1Mjqn0/DNY=";
    };
  };
  regex = {
    pname = "regex";
    version = "v0.26.1";
    src = fetchFromGitHub {
      owner = "nitely";
      repo = "nim-regex";
      rev = "v0.26.1";
      fetchSubmodules = false;
      sha256 = "sha256-+z18HPG1HYhfLiFyOCUeYJaHwk/8AXlnh9LQDfNBN6o=";
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
    version = "548d0adc9797a10b2db7f788b804330306293088";
    src = fetchgit {
      url = "https://github.com/status-im/nim-serialization";
      rev = "548d0adc9797a10b2db7f788b804330306293088";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-k3w071SmcRl76SBbGhMF3CZU7k6QD/a2Rxljm640CIc=";
    };
    date = "2025-01-13";
  };
  stew = {
    pname = "stew";
    version = "687d1b4ab1a91e6cc9c92e4fd4d98bec7874c259";
    src = fetchgit {
      url = "https://github.com/status-im/nim-stew";
      rev = "687d1b4ab1a91e6cc9c92e4fd4d98bec7874c259";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-pvQxt6vtk8bfARu0YVzRvDbnJzktLOfoaNdlvnhvun0=";
    };
    date = "2025-01-22";
  };
  unicodedb = {
    pname = "unicodedb";
    version = "v0.13.2";
    src = fetchFromGitHub {
      owner = "nitely";
      repo = "nim-unicodedb";
      rev = "v0.13.2";
      fetchSubmodules = false;
      sha256 = "sha256-k4lT/wlOI8c8mj3CF3s8dVKV98e1nSoVr/ms9ugbXyQ=";
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
    version = "3f7998095264d262a8d99e2be89045e6d9301537";
    src = fetchgit {
      url = "https://github.com/status-im/nim-zlib";
      rev = "3f7998095264d262a8d99e2be89045e6d9301537";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-KMvDlm/xmPMSDeJOcDbUp5ZWlNv3qLYO9r50JrxSmRQ=";
    };
    date = "2025-01-13";
  };
}
