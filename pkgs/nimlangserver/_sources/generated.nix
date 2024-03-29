# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  asynctools = {
    pname = "asynctools";
    version = "bb01d965a2ad0f08eaff6a53874f028ddbab4909";
    src = fetchgit {
      url = "https://github.com/nickysn/asynctools";
      rev = "bb01d965a2ad0f08eaff6a53874f028ddbab4909";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-iewBkGdfpallksfqviuz69ujF9gp64y6xge0qVU9lmw=";
    };
    date = "2023-11-20";
  };
  chronicles = {
    pname = "chronicles";
    version = "5b79c5ed5e460b19d8d8afc241b5f5a02de628a6";
    src = fetchgit {
      url = "https://github.com/status-im/nim-chronicles";
      rev = "5b79c5ed5e460b19d8d8afc241b5f5a02de628a6";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-aj4DhrJcmh49OQdkPBhtDYY7dkDWaFnRcCeC0qfxd3c=";
    };
    date = "2024-03-25";
  };
  faststreams = {
    pname = "faststreams";
    version = "f26a9909cebf29cc5e61dd795427eda60c6e431e";
    src = fetchgit {
      url = "https://github.com/status-im/nim-faststreams";
      rev = "f26a9909cebf29cc5e61dd795427eda60c6e431e";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-LeZUiLMJgY0R2k4Qymot/NHs4gzjjPcbKn583ygf7UM=";
    };
    date = "2024-03-09";
  };
  json-rpc = {
    pname = "json-rpc";
    version = "c8a5cbe26917e6716b1597dae2d08166f3ce789a";
    src = fetchgit {
      url = "https://github.com/yyoncho/nim-json-rpc";
      rev = "c8a5cbe26917e6716b1597dae2d08166f3ce789a";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-3VLu6GH9yGn5FJmETPnq8kzNaRYn/B8kMrw0tvQlPtA=";
    };
    date = "2023-06-20";
  };
  json_serialization = {
    pname = "json_serialization";
    version = "1ac1d69f9512d55d15e8218a9dbdff129bf96ddb";
    src = fetchgit {
      url = "https://github.com/status-im/nim-json-serialization";
      rev = "1ac1d69f9512d55d15e8218a9dbdff129bf96ddb";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-COTQ25EOjeP56C7oC8TyWOkbATbOpGblpWDcWE8370w=";
    };
    date = "2024-03-20";
  };
  nimlangserver = {
    pname = "nimlangserver";
    version = "0a9e0f12c847a25f5f61709e6287745b9e3e0650";
    src = fetchgit {
      url = "https://github.com/nim-lang/langserver";
      rev = "0a9e0f12c847a25f5f61709e6287745b9e3e0650";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-WO6N60RpiraPzFlMIuKlBEVWIol8S+UYdtGwcHEzDQE=";
    };
    date = "2024-03-22";
  };
  serialization = {
    pname = "serialization";
    version = "afae13adac25b6fa98bacf4b9f38458dc64317b0";
    src = fetchgit {
      url = "https://github.com/status-im/nim-serialization";
      rev = "afae13adac25b6fa98bacf4b9f38458dc64317b0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-rw9AzELi3eF+BDX0BkGyA15WGP2YLYoth4WIvO7UZv4=";
    };
    date = "2024-02-16";
  };
  stew = {
    pname = "stew";
    version = "a0c085a51fe4f2d82aa96173ac49b3bfe6043858";
    src = fetchgit {
      url = "https://github.com/status-im/nim-stew";
      rev = "a0c085a51fe4f2d82aa96173ac49b3bfe6043858";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-sV1J/vRdZM0C5vWG64omUvQubAn7+3baMX58ZurkyNQ=";
    };
    date = "2024-03-13";
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
}
