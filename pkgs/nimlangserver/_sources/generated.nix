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
    version = "856514a5b10e9293f6cdcf4cc60d7bb969f6b1c0";
    src = fetchgit {
      url = "https://github.com/status-im/nim-chronicles";
      rev = "856514a5b10e9293f6cdcf4cc60d7bb969f6b1c0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-QS7t5TWN+J19MP6HQgO31OIpbiVXtXDi1pD56ZwsFyQ=";
    };
    date = "2024-04-24";
  };
  faststreams = {
    pname = "faststreams";
    version = "11b9d952a80ec87e2443405a6a5382f9daac51f8";
    src = fetchgit {
      url = "https://github.com/status-im/nim-faststreams";
      rev = "11b9d952a80ec87e2443405a6a5382f9daac51f8";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-UESH9EAZoKOkKYpd0n+W3SeykaNT3jSM1U2/I1ZPAFY=";
    };
    date = "2024-04-03";
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
    version = "6d250f8071e1e02d15ddb6fa75e4530d137b414f";
    src = fetchgit {
      url = "https://github.com/nim-lang/langserver";
      rev = "6d250f8071e1e02d15ddb6fa75e4530d137b414f";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-DLTDLUDv+PhuWVMmaKUwZcp1mILEMVKYqdwm6YwXYwI=";
    };
    date = "2024-04-09";
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
    version = "104132fd0217e846b04dd26a5fbe3e43a4929a05";
    src = fetchgit {
      url = "https://github.com/status-im/nim-stew";
      rev = "104132fd0217e846b04dd26a5fbe3e43a4929a05";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-HffUeSpIlgEUlRhRZ5wRlGNL+vZKh9tpmSJPeios6mI=";
    };
    date = "2024-04-22";
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
