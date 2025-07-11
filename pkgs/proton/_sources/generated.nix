# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}:
{
  proton-cachyos = {
    pname = "proton-cachyos";
    version = "cachyos-10.0-20250702-slr";
    src = fetchurl {
      url = "https://github.com/CachyOS/proton-cachyos/releases/download/cachyos-10.0-20250702-slr/proton-cachyos-10.0-20250702-slr-x86_64_v3.tar.xz";
      sha256 = "sha256-z7sr3z2T/FVEJM92pmygN4cFGgcaUbYK2tOZofNSXFA=";
    };
  };
  proton-ge = {
    pname = "proton-ge";
    version = "GE-Proton10-9";
    src = fetchurl {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/GE-Proton10-9/GE-Proton10-9.tar.gz";
      sha256 = "sha256-sc+m/9yUYb+aYH07GyOMevkXikT6eFdNvfBu2CZ4trE=";
    };
  };
  proton-sarek = {
    pname = "proton-sarek";
    version = "Proton-Sarek10-8";
    src = fetchurl {
      url = "https://github.com/pythonlover02/Proton-Sarek/releases/download/Proton-Sarek10-8/Proton-Sarek10-8.tar.gz";
      sha256 = "sha256-GLyovBF0SSyAy+QKdO32fUQe8JQr1uIh0sU3Kl0Ylo4=";
    };
  };
  proton-sarek-async = {
    pname = "proton-sarek-async";
    version = "Proton-Sarek10-8";
    src = fetchurl {
      url = "https://github.com/pythonlover02/Proton-Sarek/releases/download/Proton-Sarek10-8/Proton-Sarek10-8-async.tar.gz";
      sha256 = "sha256-mPsK0ivrtxR3V61wUPkKqh6bMoovLHrDls14B1hUKjE=";
    };
  };
}
