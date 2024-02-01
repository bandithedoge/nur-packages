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
    version = "ccbb7566d1a06bfc1ec42dd8da74a47f1d3b3f4b";
    src = fetchgit {
      url = "https://github.com/status-im/nim-chronicles";
      rev = "ccbb7566d1a06bfc1ec42dd8da74a47f1d3b3f4b";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-38n4Jiz8IfsH0sBd+1wt7x51ZuQd7wld5JXEtK8rdBc=";
    };
    date = "2023-11-29";
  };
  faststreams = {
    pname = "faststreams";
    version = "720fc5e5c8e428d9d0af618e1e27c44b42350309";
    src = fetchgit {
      url = "https://github.com/status-im/nim-faststreams";
      rev = "720fc5e5c8e428d9d0af618e1e27c44b42350309";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-DbPTHH4uOGmMpQk3OWqKCqmKN6ZvOysJWWW4Nq1Jles=";
    };
    date = "2023-06-27";
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
    version = "224fd6efc9af049b23244522fa6ee45efa2abd42";
    src = fetchgit {
      url = "https://github.com/status-im/nim-json-serialization";
      rev = "224fd6efc9af049b23244522fa6ee45efa2abd42";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-GrujxvlIDFHsCjC+uVlKgCtGhCFEHuiDqquCbxoyDFw=";
    };
    date = "2024-01-27";
  };
  nimlangserver = {
    pname = "nimlangserver";
    version = "9c86ff893f65cf88bf8ee526fef2887fe34e1350";
    src = fetchgit {
      url = "https://github.com/nim-lang/langserver";
      rev = "9c86ff893f65cf88bf8ee526fef2887fe34e1350";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-f6cTH71c4OxwjsycB4Jo0rhVDyA9gMCLmHfOkJ0otVc=";
    };
    date = "2024-01-31";
  };
  serialization = {
    pname = "serialization";
    version = "e84cfd70616e3110d30d4b8a41588a2e1b76511d";
    src = fetchgit {
      url = "https://github.com/status-im/nim-serialization";
      rev = "e84cfd70616e3110d30d4b8a41588a2e1b76511d";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-3ZribPjOwxBCYIQSgnHEE5bmW1SjWzaLIyGSoSW56Fs=";
    };
    date = "2024-01-27";
  };
  stew = {
    pname = "stew";
    version = "3aa92ab843ee2dbf2198e2d517ceeeb29dcda3d9";
    src = fetchgit {
      url = "https://github.com/status-im/nim-stew";
      rev = "3aa92ab843ee2dbf2198e2d517ceeeb29dcda3d9";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-x+abonEJ86T/sdplPWl12kznJN4sC6wmhGgDLO3K8X4=";
    };
    date = "2024-01-20";
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
