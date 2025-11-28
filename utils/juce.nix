{
  pkgs,
  callPackage',
  ...
}:
rec {
  commonBuildInputs = with pkgs; [
    (callPackage' ../pkgs/curl-gnutls3 { })
    alsa-lib
    fontconfig
    freetype
    libGL
    xorg.libX11
    xorg.libXcursor
    xorg.libXext
    xorg.libXinerama
    xorg.libXrandr
  ];

  mkJucePackage = pkgs.lib.extendMkDerivation {
    constructDrv = (pkgs.stdenvAdapters.useMoldLinker pkgs.stdenv).mkDerivation;
    extendDrvArgs =
      finalAttrs:
      {
        dontUseJuceInstall ? false,
        ...
      }@args:
      {
        nativeBuildInputs =
          with pkgs;
          [
            cmake
            ninja
            pkg-config
            autoPatchelfHook
          ]
          ++ (args.nativeBuildInputs or [ ]);

        buildInputs = commonBuildInputs ++ (args.buildInputs or [ ]);

        cmakeFlags = [
          "-DCOPY_PLUGIN_AFTER_BUILD=FALSE"
          "-DCMAKE_POLICY_VERSION_MINIMUM=3.5"
        ]
        ++ (args.cmakeFlags or [ ]);

        postPatch = ''
          for f in $(find -name CMakeLists.txt); do
            substituteInPlace "$f" --replace-quiet "COPY_PLUGIN_AFTER_BUILD TRUE" "COPY_PLUGIN_AFTER_BUILD FALSE"
          done
        ''
        + (args.postPatch or "");

        installPhase =
          args.installPhase or (
            if dontUseJuceInstall then
              null
            else
              ''
                runHook preInstall

                for f in *_artefacts/Release/Standalone/*; do
                  mkdir -p $out/bin
                  cp "$f" $out/bin
                done

                for f in *_artefacts/Release/CLAP/*; do
                  mkdir -p $out/lib/clap
                  cp "$f" $out/lib/clap
                done

                for f in *_artefacts/Release/LV2/*; do
                  mkdir -p $out/lib/lv2
                  cp -r "$f" $out/lib/lv2
                done

                for f in *_artefacts/Release/VST3/*; do
                  mkdir -p $out/lib/vst3
                  cp -r "$f" $out/lib/vst3
                done

                runHook postInstall
              ''
          );

        runtimeDependencies = commonBuildInputs;
      };
  };
}
