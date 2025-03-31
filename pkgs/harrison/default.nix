{
  pkgs,
  sources,
  callPackage',
  ...
}: let
  mkHarrison = source:
    pkgs.stdenv.mkDerivation {
      inherit (source) pname version src;

      nativeBuildInputs = with pkgs; [
        autoPatchelfHook
      ];

      buildInputs = with pkgs; [
        (callPackage' ../curl-gnutls3)
        libGL
        xorg.libX11
        xorg.libXext
      ];

      buildPhase = ''
        mkdir -p $out/lib
        cp -r vst $out/lib
      '';

      meta = with pkgs.lib; {
        homepage = "https://support.harrisonaudio.com/hc/en-gb/articles/19516617411613-Harrison-AVA-downloads-OLD-VERSIONS";
        license = licenses.unfree;
        platforms = ["x86_64-linux"];
        sourceProvenance = [sourceTypes.binaryNativeCode];
      };
    };
in {
  _32c = mkHarrison sources.harrison-32c;

  ava = mkHarrison sources.harrison-ava;
}
