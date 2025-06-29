{
  pkgs,
  sources,
  instructionSet ? "avx", # sse2 or avx
  ...
}:
let
  arch = pkgs.stdenv.targetPlatform.uname.processor;
in
pkgs.stdenv.mkDerivation rec {
  inherit (sources.js80p) pname src;
  version = pkgs.lib.removePrefix "v" sources.js80p.version;

  buildInputs = with pkgs; [
    cairo
    xorg.libX11
    xorg.libxcb
  ];

  postPatch = ''
    substituteInPlace make/linux-gpp.mk \
      --replace-fail "/usr/bin/objcopy" "${pkgs.stdenv.cc}/bin/objcopy"
  '';

  buildPhase = ''
    runHook preBuild

    make all

    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p $out/lib/{vst,vst3}

    cp dist/js80p-dev-linux-${arch}-${instructionSet}-fst/js80p.so $out/lib/vst
    cp dist/js80p.vstxml $out/lib/vst

    mkdir -p $out/lib/vst3/js80p.vst3/Contents/${pkgs.stdenv.system}
    cp dist/js80p-dev-linux-${arch}-${instructionSet}-vst3_single_file/js80p.vst3 \
      $out/lib/vst3/js80p.vst3/Contents/${pkgs.stdenv.system}/js80p.so

    runHook postInstall
  '';

  SYS_LIB_PATH =
    (pkgs.symlinkJoin {
      name = "js80p-libs";
      paths = with pkgs; [
        cairo
        xorg.libxcb
      ];
    })
    + "/lib";

  CPPCHECK = pkgs.cppcheck + "/bin/cppcheck";
  CPP_DEV_PLATFORM = pkgs.stdenv.cc + "/bin/c++";
  CPP_TARGET_PLATFORM = pkgs.stdenv.cc + "/bin/c++";
  INSTRUCTION_SET = instructionSet;
  TARGET_PLATFORM = "${arch}-gpp";
  VERSION_STR = version;
  VERSION_INT = pkgs.lib.concatStrings (pkgs.lib.splitString "." (pkgs.lib.removePrefix "v" version));

  NIX_CFLAGS_COMPILE = "-Wno-format-security";

  enableParallelBuilding = true;

  meta = with pkgs.lib; {
    description = "A MIDI driven, performance oriented, versatile, free and open source synthesizer VST plugin";
    homepage = "https://attilammagyar.github.io/js80p/index.html#home";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
}
