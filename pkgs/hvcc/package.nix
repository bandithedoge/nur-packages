{
  sources,

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
in
python3Packages.buildPythonPackage {
  inherit (sources.hvcc) pname src;
  version = lib.removePrefix "v" sources.hvcc.version;

  pyproject = true;

  dependencies = with python3Packages; [
    importlib-resources
    poetry-core
    pydantic
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
