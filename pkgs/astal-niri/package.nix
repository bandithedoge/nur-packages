{
  sources,

  lib,
  astal,
  json-glib,
}:
astal.buildAstalModule.override
  {
    source = sources.astal-niri.src.overrideAttrs (_: {
      pname = "astal-niri-source";
      inherit (sources.astal-niri) version src;
    });
  }
  {
    name = "niri";
    version = sources.astal-niri.date;

    buildInputs = [ json-glib ];

    meta = {
      description = "IPC client for Niri";
      homepage = "https://github.com/sameoldlab/astal";
      inherit (astal.meta) license platforms;
      mainProgram = "astal-niri";
      maintainers = [ lib.maintainers.bandithedoge ];
    };
  }
