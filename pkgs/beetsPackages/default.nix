{
  pkgs,
  sources,
  ...
}:
{
  describe = pkgs.python3Packages.buildPythonApplication {
    inherit (sources.beets-describe) pname version src;

    dependencies = with pkgs.python3Packages; [
      pkgs.beets
      numpy
      pandas
      terminaltables
      termplotlib
    ];

    nativeCheckInputs = with pkgs.python3Packages; [
      pytest
      coverage
      mock
      six
      pyyaml
    ];
  };

  yearfixer = pkgs.python3Packages.buildPythonApplication {
    inherit (sources.beets-yearfixer) pname version src;

    dependencies = with pkgs.python3Packages; [
      pkgs.beets
      requests
    ];

    nativeCheckInputs = with pkgs.python3Packages; [
      pytest
      coverage
      mock
      six
      pyyaml
    ];
  };
}
