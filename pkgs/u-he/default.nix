{
  pkgs,
  sources,
  ...
}: let
  patchelf-raphi = pkgs.stdenv.mkDerivation {
    inherit (sources.patchelf-raphi) pname version src;
    nativeBuildInputs = with pkgs; [autoreconfHook];
    meta.mainProgram = "patchelf";
  };
  mkUhe = product: {
    clap ? true,
    meta ? {},
    extraLibs ? [],
    nativeBuildInputs ? [],
    preBuild ? null,
    postBuild ? null,
  }: let
  in
    pkgs.stdenv.mkDerivation {
      inherit (sources.${product}) pname version src;

      nativeBuildInputs = with pkgs;
        [
          autoPatchelfHook
        ]
        ++ nativeBuildInputs;

      buildInputs = with pkgs;
        [
          glib
          gtk3
          xorg.xcbutil
          xorg.xcbutilkeysyms
        ]
        ++ extraLibs;

      buildPhase =
        ''
          runHook preBuild

          mkdir -p $out/libexec
          cp -r ${product} $out/libexec/${product}
          for p in $out/libexec/${product}/Presets/*; do
            mkdir -p "$p/MIDI Programs"
          done

          # adapted from https://git.sr.ht/~raphi/elf-replace-symbol/tree/master/item/libfprint2-tod1-broadcom/default.nix
          substitute ${./wrapper.c} wrapper.c \
            --subst-var-by store_path $out/libexec/${product}
          cc -fPIC -shared -O3 wrapper.c -o $out/libexec/${product}/snprintf_wrapper.so

          ${pkgs.lib.getExe patchelf-raphi} \
            --replace-symbol snprintf snprintf_wrapper \
            --add-needed snprintf_wrapper.so \
            $out/libexec/${product}/${product}.64.so

          mkdir -p $out/lib/vst
          ln -s $out/libexec/${product}/${product}.64.so $out/lib/vst/${product}.64.so

          mkdir -p $out/lib/vst3/${product}.vst3/Contents/{x86_64-linux,Resources/Documentation}
          ln -s $out/libexec/${product}/${product}.64.so $out/lib/vst3/${product}.vst3/Contents/x86_64-linux/${product}.so
          ln -s $out/libexec/${product}/*.pdf $out/lib/vst3/${product}.vst3/Contents/Resources/Documentation/
        ''
        + (pkgs.lib.optionalString clap ''
          mkdir -p $out/lib/clap
          ln -s $out/libexec/${product}/${product}.64.so $out/lib/clap/${product}.64.clap
        '')
        + ''
          runHook postBuild
        '';

      inherit preBuild postBuild;

      passthru = {
        inherit product;
      };

      meta = with pkgs.lib;
        {
          license = licenses.unfree;
          platforms = ["x86_64-linux"];
          sourceProvenance = [sourceTypes.binaryNativeCode];
        }
        // meta;
    };
in {
  ace = mkUhe "ACE" {
    meta = {
      homepage = "https://u-he.com/products/ace/";
      description = "Gateway into modular";
    };
  };

  bazille = mkUhe "Bazille" {
    meta = {
      homepage = "https://u-he.com/products/bazille/";
      description = "Modular Synthesizer";
    };
  };

  colourcopy = mkUhe "ColourCopy" {
    meta = {
      homepage = "https://u-he.com/products/colourcopy/";
      description = "Bucket Brigade Delay";
    };
  };

  diva = mkUhe "Diva" {
    meta = {
      homepage = "https://u-he.com/products/diva/";
      description = "The spirit of analogue";
    };
  };

  filterscape = mkUhe "Filterscape" {
    meta = {
      homepage = "https://u-he.com/products/filterscape/";
      description = "The creative multi-talent";
    };
  };

  hive = mkUhe "Hive" {
    meta = {
      homepage = "https://u-he.com/products/hive/";
      description = "Sleek, streamlined, supercharged";
    };
  };

  mfm2 = mkUhe "MFM2" {
    meta = {
      homepage = "https://u-he.com/products/mfm2/";
      description = "Delay heaven";
    };
  };

  podolski = mkUhe "Podolski" {
    clap = false;
    meta = {
      homepage = "https://u-he.com/products/podolski/";
      description = "Nice and easy";
    };
  };

  presswerk = mkUhe "Presswerk" {
    clap = false;
    meta = {
      homepage = "https://u-he.com/products/presswerk/";
      description = "Compression with musical soul";
    };
  };

  protoverb = mkUhe "Protoverb" {
    clap = false;
    meta = {
      homepage = "https://u-he.com/products/protoverb/";
      description = "Experimental research reverb";
    };
  };

  repro = mkUhe "Repro-1" {
    clap = false;
    meta = {
      homepage = "https://u-he.com/products/repro/";
      description = "Two classics, recreated";
    };
  };

  satin = mkUhe "Satin" {
    meta = {
      homepage = "https://u-he.com/products/satin/";
      description = "Tape simulation";
    };
  };

  triplecheese = mkUhe "TripleCheese" {
    clap = false;
    meta = {
      homepage = "https://u-he.com/products/triplecheese/";
      description = "Luscious and cheesy";
    };
  };

  twangstrom = mkUhe "Twangstrom" {
    meta = {
      homepage = "https://u-he.com/products/twangstrom/";
      description = "Spring Reverberator";
    };
  };

  uhbik = mkUhe "Uhbik" {
    clap = false;
    meta = {
      homepage = "https://u-he.com/products/uhbik/";
      description = "Nine subtle to spectacular effects";
    };
  };

  zebra-legacy = mkUhe "Zebra2" {
    nativeBuildInputs = with pkgs; [unzip];
    preBuild = ''
      tar -xf 01\ Zebra2/*.xz
      cp -r Zebra2*/Zebra2 .
    '';
    postBuild = ''
      tar -xf 02\ The\ Dark\ Zebra/*.tar.xz
      cp -r ZebraHZ*/ZebraHZ/* $out/libexec/Zebra2/

      mkdir -p $out/libexec/Zebra2/Presets/{ZRev,ZebraHZ}/MIDI\ Programs

      ${pkgs.lib.getExe patchelf-raphi} \
        --replace-symbol snprintf snprintf_wrapper \
        --add-needed snprintf_wrapper.so \
        $out/libexec/Zebra2/ZebraHZ.64.so

      ln -s $out/libexec/Zebra2/ZebraHZ.64.so $out/lib/vst/ZebraHZ.so
      mkdir -p $out/lib/vst3/ZebraHZ.vst3/Contents/{x86_64-linux,Resources/Documentation}
      ln -s $out/libexec/Zebra2/ZebraHZ.64.so $out/lib/vst3/ZebraHZ.vst3/Contents/x86_64-linux/ZebraHZ.so
      ln -s $out/libexec/Zebra2/*.pdf $out/lib/vst3/ZebraHZ.vst3/Contents/Resources/Documentation/

      for soundset in 03\ Zebra\ Legacy\ Soundsets/*.uhe-soundset; do
        unzip -o "$soundset" -d $out/libexec/Zebra2
      done
    '';
  };
}
