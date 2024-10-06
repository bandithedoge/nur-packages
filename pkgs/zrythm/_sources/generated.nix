# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  carla-git = {
    pname = "carla-git";
    version = "e312817b6f3d95e928dfde119934e7657092e7cc";
    src = fetchgit {
      url = "https://github.com/falkTX/Carla";
      rev = "e312817b6f3d95e928dfde119934e7657092e7cc";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-jznejvHl6+L0IHmbfSEkdk5vxWbueN9BVa+xl1NQQ4c=";
    };
    date = "2024-10-01";
  };
  zrythm = {
    pname = "zrythm";
    version = "11f473dcd044eb7ea612c41b0e27f78b8ef1521b";
    src = fetchgit {
      url = "https://gitlab.zrythm.org/zrythm/zrythm.git";
      rev = "11f473dcd044eb7ea612c41b0e27f78b8ef1521b";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-e0d4UaVeccDzSaCOXOz3awAgob66aP/J78zwZB51rZk=";
    };
    date = "2024-10-06";
  };
}
