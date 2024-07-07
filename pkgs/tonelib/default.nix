{
  pkgs,
  sources,
  ...
}: let
  mkToneLib = name:
    pkgs.stdenv.mkDerivation {
      inherit (sources.${name}) pname version src;

      nativeBuildInputs = with pkgs; [
        autoPatchelfHook
        dpkg
      ];

      buildInputs = with pkgs; [
        alsa-lib
        freetype
        libGL
      ];

      unpackPhase = ''
        mkdir -p root
        dpkg-deb --fsys-tarfile $src | tar --extract --directory=root
      '';

      buildPhase = ''
        cp -r root/usr $out
      '';
    };
in {
  bassdrive = mkToneLib "bassdrive";
  easycomp = mkToneLib "easycomp";
  noisereducer = mkToneLib "noisereducer";
  tubewarmth = mkToneLib "tubewarmth";
  zoom = (mkToneLib "zoom").overrideAttrs (old: {
    buildInputs = old.buildInputs ++ (with pkgs; [
      gtk3
      stdenv.cc.cc.lib
      webkitgtk
    ]);
  });
}
