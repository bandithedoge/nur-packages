{
  pkgs,
  sources,
  rom ? pkgs.lib.warn "Osirus will not function without a Virus B or Virus C ROM file. These files are illegal to share so you must find them on your own. Provide one by installing this package as such: `osirus.override {rom = <path-to-rom-file>;}`" null,
  ...
}:
pkgs.stdenv.mkDerivation {
  pname = "Osirus";
  inherit (sources.osirus-test-console-x86_64) version;

  srcs = with sources;
    {
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
    }
    .${pkgs.stdenv.targetPlatform.uname.processor};

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
      cp local/virusTestConsole $out/bin
    ''
    + pkgs.lib.optionalString (rom != null) ''
      mkdir -p $out/share/osirus
      cp ${rom} $out/share/osirus/osirus_rom.bin

      ln -s $out/share/osirus/osirus_rom.bin $out/bin
      ln -s $out/share/osirus/osirus_rom.bin $out/lib/clap
      ln -s $out/share/osirus/osirus_rom.bin $out/lib/lv2
      ln -s $out/share/osirus/osirus_rom.bin $out/lib/vst
      ln -s $out/share/osirus/osirus_rom.bin $out/lib/vst3
    '';

  meta = with pkgs.lib; {
    description = "DSP56300 Emulator for Access Virus A, B, & C";
    homepage = "https://dsp56300.wordpress.com/osirus/";
    license = licenses.unfree;
    platforms = ["x86_64-linux" "aarch64-linux"];
  };
}
