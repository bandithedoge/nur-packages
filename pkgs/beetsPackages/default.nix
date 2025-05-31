{
  pkgs,
  sources,
  ...
}:
{
  describe = pkgs.python3Packages.buildPythonApplication {
    inherit (sources.beets-describe) pname version src;

    nativeBuildInputs = with pkgs; [
      beets
    ];

    dependencies = with pkgs.python3Packages; [
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

    meta = with pkgs; {
      description = "A beets plugin for obsessive-compulsive music geeks to describe what's in their library";
      homepage = "https://github.com/adamjakab/BeetsPluginDescribe";
      license = lib.licenses.mit;
      inherit (beets.meta) platforms;
    };
  };

  yearfixer = pkgs.python3Packages.buildPythonApplication {
    inherit (sources.beets-yearfixer) pname version src;

    nativeBuildInputs = with pkgs; [
      beets
    ];

    dependencies = with pkgs.python3Packages; [
      requests
    ];

    nativeCheckInputs = with pkgs.python3Packages; [
      pytest
      coverage
      mock
      six
      pyyaml
    ];

    meta = with pkgs; {
      description = "A beets plugin for obsessive-compulsive music geeks to fix missing album release date";
      homepage = "https://github.com/adamjakab/BeetsPluginYearFixer";
      license = lib.licenses.mit;
      inherit (beets.meta) platforms;
    };
  };
}
