{
  pkgs,
  sources,
  ...
}: let
  mkPlugin = {
    name,
    namePretty ? name,
    src,
    version,
    synthName,
    testConsole ? "virusTestConsole",
  }:
    pkgs.callPackage ({rom ? pkgs.lib.warn "${namePretty} will not function without a ${synthName} ROM file. These files are illegal to share so you must find them on your own. Provide one by installing this package as such: `${name}.override {rom = <path-to-rom-file>;}`" null}:
      pkgs.stdenv.mkDerivation {
        pname = name;
        inherit version;

        srcs = src.${pkgs.stdenv.targetPlatform.uname.processor};

        nativeBuildInputs = with pkgs; [
          autoPatchelfHook
          unzip
        ];

        buildInputs = with pkgs; [
          freetype
          alsa-lib
        ];

        buildPhase =
          ''
            mkdir -p $out/bin
            cp -r local/lib $out
            cp local/${testConsole} $out/bin/${name}TestConsole
          ''
          + pkgs.lib.optionalString (rom != null) ''
            mkdir -p $out/share/${name}
            cp ${rom} $out/share/${name}/osirus_rom.bin

            ln -s $out/share/${name}/osirus_rom.bin $out/bin
            ln -s $out/share/${name}/osirus_rom.bin $out/lib/clap
            ln -s $out/share/${name}/osirus_rom.bin $out/lib/lv2
            ln -s $out/share/${name}/osirus_rom.bin $out/lib/vst
            ln -s $out/share/${name}/osirus_rom.bin $out/lib/vst3
          '';

        meta = with pkgs.lib; {
          description = "DSP56300 Emulator for ${synthName}";
          homepage = "https://dsp56300.wordpress.com/${name}/";
          license = licenses.unfree;
          platforms = ["x86_64-linux" "aarch64-linux"];
        };
      }) {};
in {
  osirus = mkPlugin {
    name = "osirus";
    namePretty = "Osirus";
    src = with sources; {
      x86_64 = [
        osirus-test-console-x86_64.src
        osirus-clap-x86_64.src
        osirus-lv2-x86_64.src
        osirus-vst2-x86_64.src
        osirus-vst3-x86_64.src
        osirusfx-clap-x86_64.src
        osirusfx-lv2-x86_64.src
        osirusfx-vst2-x86_64.src
        osirusfx-vst3-x86_64.src
      ];
      aarch64 = [
        osirus-test-console-aarch64.src
        osirus-clap-aarch64.src
        osirus-lv2-aarch64.src
        osirus-vst2-aarch64.src
        osirus-vst3-aarch64.src
        osirusfx-clap-aarch64.src
        osirusfx-lv2-aarch64.src
        osirusfx-vst2-aarch64.src
        osirusfx-vst3-aarch64.src
      ];
    };
    inherit (sources.osirus-test-console-x86_64) version;
    synthName = "Virus A, B, or C";
  };

  ostirus = mkPlugin {
    name = "ostirus";
    namePretty = "OsTIrus";
    src = with sources; {
      x86_64 = [
        ostirus-test-console-x86_64.src
        ostirus-clap-x86_64.src
        ostirus-lv2-x86_64.src
        ostirus-vst2-x86_64.src
        ostirus-vst3-x86_64.src
        ostirusfx-clap-x86_64.src
        ostirusfx-lv2-x86_64.src
        ostirusfx-vst2-x86_64.src
        ostirusfx-vst3-x86_64.src
      ];
      aarch64 = [
        ostirus-test-console-aarch64.src
        ostirus-clap-aarch64.src
        ostirus-lv2-aarch64.src
        ostirus-vst2-aarch64.src
        ostirus-vst3-aarch64.src
        ostirusfx-clap-aarch64.src
        ostirusfx-lv2-aarch64.src
        ostirusfx-vst2-aarch64.src
        ostirusfx-vst3-aarch64.src
      ];
    };
    inherit (sources.ostirus-test-console-x86_64) version;
    synthName = "Virus TI";
  };
}
