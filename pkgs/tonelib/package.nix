{
  sources,

  lib,
  stdenv,

  alsa-lib,
  autoPatchelfHook,
  dpkg,
  freetype,
  gtk3,
  libGL,
  webkitgtk_4_1,
}:
let
  mkToneLib =
    name: attrs:
    stdenv.mkDerivation (
      {
        inherit (sources.${name}) pname version src;

        nativeBuildInputs = [
          autoPatchelfHook
          dpkg
        ];

        buildInputs = [
          alsa-lib
          freetype
          libGL
        ];

        unpackPhase = ''
          mkdir -p root
          dpkg-deb --fsys-tarfile $src | tar --extract --directory=root
        '';

        buildPhase = ''
          runHook preBuild

          cp -r root/usr $out

          runHook postBuild
        '';
      }
      // attrs
    );
in
{
  bassdrive = mkToneLib "bassdrive" {
    meta = with lib; {
      description = "Full Power of the Legendary Drive Pedal for the Highest String Gauges";
      homepage = "https://tonelib.net/tl-bassdrive.html";
      license = licenses.unfree;
      platforms = [ "x86_64-linux" ];
      sourceProvenance = [ sourceTypes.binaryNativeCode ];
    };
  };

  easycomp = mkToneLib "easycomp" {
    meta = with lib; {
      description = "Powerful Compressor without any Complexity";
      homepage = "https://tonelib.net/plugins/tl-easycomp.html";
      license = licenses.unfree;
      platforms = [ "x86_64-linux" ];
      sourceProvenance = [ sourceTypes.binaryNativeCode ];
    };
  };

  noisereducer = mkToneLib "noisereducer" {
    meta = with lib; {
      description = "Powerful, yet simple two-unit rack effect on guard of your mix clarity";
      homepage = "https://tonelib.net/tl-noisereducer.html";
      license = licenses.unfree;
      platforms = [ "x86_64-linux" ];
      sourceProvenance = [ sourceTypes.binaryNativeCode ];
    };
  };

  tubewarmth = mkToneLib "tubewarmth" {
    meta = with lib; {
      description = "The Vibrancy and Warmth of the Tube along with the Digital Precision and Clarity";
      homepage = "https://tonelib.net/tl-tubewarmth.html";
      license = licenses.unfree;
      platforms = [ "x86_64-linux" ];
      sourceProvenance = [ sourceTypes.binaryNativeCode ];
    };
  };

  zoom =
    (mkToneLib "zoom" {
      meta = with lib; {
        description = "Best way to manage your Zoom processor";
        homepage = "https://tonelib.net/tonelib-zoom.html";
        license = licenses.unfree;
        platforms = [ "x86_64-linux" ];
        sourceProvenance = [ sourceTypes.binaryNativeCode ];
        knownVulnerabilities = [
          "libsoup2 is EOL"
        ];
        insecure = true; # https://github.com/NixOS/nixpkgs/issues/360897
      };
    }).overrideAttrs
      (old: {
        buildInputs = old.buildInputs ++ [
          gtk3
          stdenv.cc.cc.lib
          webkitgtk_4_1
        ];
      });
}
