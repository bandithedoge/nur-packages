{
  sources,
  fetchFromGitHub,

  lib,
  python3Packages,
}:
let
  wstd2daisy = python3Packages.buildPythonPackage {
    inherit (sources.wstd2daisy) pname src;
    version = sources.wstd2daisy.date;

    pyproject = true;

    build-system = with python3Packages; [
      setuptools-scm
    ];

    dependencies = with python3Packages; [
      jinja2
    ];
  };

  # XXX: https://github.com/NixOS/nixpkgs/pull/474587
  pydantic-extra-types = python3Packages.pydantic-extra-types.overridePythonAttrs (old: rec {
    version = "2.11.0";
    src = fetchFromGitHub {
      owner = "pydantic";
      repo = "pydantic-extra-types";
      tag = "v${version}";
      hash = "sha256-aXhlfDBCpk8h3F4gXAQ40fVKxsoFvkmfO/roaqrGxho=";
    };

    dependencies = old.dependencies ++ [ python3Packages.cron-converter ];
  });
in
python3Packages.buildPythonPackage {
  inherit (sources.hvcc) pname src;
  version = lib.removePrefix "v" sources.hvcc.version;

  pyproject = true;

  dependencies = with python3Packages; [
    arpeggio
    importlib-resources
    poetry-core
    pydantic
    pydantic-extra-types
    wstd2daisy
  ];

  doCheck = false;

  meta = with lib; {
    description = "The heavy hvcc compiler for Pure Data patches. Updated to python3 and additional generators ";
    homepage = "https://wasted-audio.github.io/hvcc/";
    license = licenses.gpl3;
    platforms = platforms.unix;
  };
}
