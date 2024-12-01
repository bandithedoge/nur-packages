# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  actuate = {
    pname = "actuate";
    version = "v1.3.5";
    src = fetchFromGitHub {
      owner = "ardura";
      repo = "Actuate";
      rev = "v1.3.5";
      fetchSubmodules = false;
      sha256 = "sha256-93v3ye75hQ0PQVakzmwmM+aFJc/BDPaxIC2FqRr8+X0=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./actuate-v1.3.5/Cargo.lock;
      outputHashes = {
        "nih_plug_xtask-0.1.0" = "sha256-n1qe6Mv7lgee9g6TX5a6cMhBn3prLm6FavqB84SILVM=";
        "assert_no_alloc-1.1.2" = "sha256-kCwtn0uONDTlDqfCpYtjB3spYM89qWjkzUOdcGjtY3c=";
        "baseview-0.1.0" = "sha256-HFk3Q9hwdgeWJta2I0y/nBXM7Qftp7vtYSCV4eB4NJA=";
        "vst3-com-0.1.0" = "sha256-tKWEmJR9aRpfsiuVr0K8XXYafVs+CzqCcP+Ea9qvZ7Y=";
        "nih_plug-0.0.0" = "sha256-8WBsOXz4pqWdoiKYde6PV0WySVCM4AzwJEttbReBaZ0=";
        "clap-sys-0.3.0" = "sha256-svq9DMqzKVZCU07FiOIsdCt78BJctwlPobSlNZGeBxQ=";
        "ecolor-0.28.0" = "sha256-d0H5YZodXWQzNtGPS4Rv6Y4HHUna7Oifg0yK/E8cId8=";
        "egui-baseview-0.2.0" = "sha256-F8ADmQK+1XvdB2/JKr3CYKFm9+5Zsr4z50gleek3/wY=";
        "reflink-0.1.3" = "sha256-1o5d/mepjbDLuoZ2/49Bi6sFgVX4WdCuhGJkk8ulhcI=";
        "egui_file-0.18.0" = "sha256-DbB+7lxhgRnhmHqxB24+UKwwMe2CAA+e635rQtjk85c=";
      };
    };
  };
}