{
  pkgs,
  sources,
  pythonPkgs ? pkgs.python3Packages,
  ...
}:
pythonPkgs.buildPythonPackage {
  inherit (sources.termtables) pname version src;
  pyproject = true;

  nativeBuildInputs = with pythonPkgs; [
    setuptools
  ];

  meta = with pkgs.lib; {
    description = "Pretty tables in the terminal";
    homepage = "https://github.com/nschloe/termtables";
    license = licenses.gpl3Plus;
  };
}
