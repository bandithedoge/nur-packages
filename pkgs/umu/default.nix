{
  pkgs,
  sources,
  ...
}: let
  python' = pkgs.python3.withPackages (p:
    with p; [
      build
      installer
      hatchling
      xlib
      filelock
    ]);
in
  python'.pkgs.buildPythonPackage {
    inherit (sources.umu) pname src;
    version = sources.umu.date;
    pyproject = false;

    nativeBuildInputs = with pkgs; [
      git
      scdoc
    ];

    postInstall = ''
      mv -fv $out${python'}/* $out
      mv -fv $out$out/* $out
      rm -vrf $out/nix
    '';

    configureScript = "./configure.sh";
    configureFlags = ["--prefix=${placeholder "out"}"];

    makeFlags = [
      "PYTHON_INTERPRETER=${pkgs.lib.getExe python'}"
      "SHELL_INTERPRETER=${pkgs.lib.getExe pkgs.bash}"
      "DESTDIR=${placeholder "out"}"
    ];

    meta = with pkgs.lib; {
      description = "Unified Linux Wine Game Launcher";
      homepage = "https://github.com/Open-Wine-Components/umu-launcher";
      license = licenses.gpl3;
      platforms = platforms.linux;
    };
  }