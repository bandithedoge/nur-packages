{
  pkgs,
  sources,
  rom ? pkgs.lib.warn "Osirus will not function without a Virus B or Virus C ROM file. These files are illegal to share so you must find them on your own. Provide one by installing this package as such: `osirus.override {rom = <path-to-rom-file>;}`" null,
  ...
}:
pkgs.stdenv.mkDerivation {
  pname = "Osirus";
  inherit (sources.osirus-test-console) version;

  srcs = with sources; [
    osirus-test-console.src
    osirus-clap.src
    osirus-lv2.src
    osirus-vst2.src
    osirus-vst3.src
    osirusfx-clap.src
    osirusfx-lv2.src
    osirusfx-vst2.src
    osirusfx-vst3.src
  ];

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
      ls local
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
}
