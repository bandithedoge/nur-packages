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
      sparseCheckout = [];
      sha256 = "sha256-iewBkGdfpallksfqviuz69ujF9gp64y6xge0qVU9lmw=";
    };
    date = "2023-11-20";
  };
  chronicles = {
    pname = "chronicles";
    version = "33761a5f77610d3f87f774244490eae43a9ac5a1";
    src = fetchgit {
      url = "https://github.com/status-im/nim-chronicles";
      rev = "33761a5f77610d3f87f774244490eae43a9ac5a1";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-JISBoYV3Ljbra/VYGTeIsLdK1cmK5oQKW08if/PnHB8=";
    };
    date = "2024-05-01";
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
      sparseCheckout = [];
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
      sparseCheckout = [];
      sha256 = "sha256-3VLu6GH9yGn5FJmETPnq8kzNaRYn/B8kMrw0tvQlPtA=";
    };
    date = "2023-06-20";
  };
  json_serialization = {
    pname = "json_serialization";
    version = "4d0b0662ed960ab2c5a1ddbd08f77048bac13ae7";
    src = fetchgit {
      url = "https://github.com/status-im/nim-json-serialization";
      rev = "4d0b0662ed960ab2c5a1ddbd08f77048bac13ae7";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-4JgjC8Hm2O2z5ynWPaPb6Qt0catFjbB9LWax0aK9pSg=";
    };
    date = "2024-05-20";
  };
  nimlangserver = {
    pname = "nimlangserver";
    version = "fb725fe9de66979412341a97d6103386e003e0b6";
    src = fetchgit {
      url = "https://github.com/nim-lang/langserver";
      rev = "fb725fe9de66979412341a97d6103386e003e0b6";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-UTHMozvSlOWw5wj4y5BLFF1iYMeMxfPQcPwp26r0yFQ=";
    };
    date = "2024-06-22";
  };
  serialization = {
    pname = "serialization";
    version = "005ee90cb6aa563cdd690910455ea05f916ead3f";
    src = fetchgit {
      url = "https://github.com/status-im/nim-serialization";
      rev = "005ee90cb6aa563cdd690910455ea05f916ead3f";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-nqP2/XqTfCDipWeNNhWOOONBpmAfdpGA/aUJTpNqumY=";
    };
    date = "2024-06-13";
  };
  stew = {
    pname = "stew";
    version = "bb086e69da967ad235ed6c31247769e75b318e61";
    src = fetchgit {
      url = "https://github.com/status-im/nim-stew";
      rev = "bb086e69da967ad235ed6c31247769e75b318e61";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-gWmIpThnfd6JgWOqSr4QvHlQ9rWaF+OIDOi5/LlADhI=";
    };
    date = "2024-06-17";
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
