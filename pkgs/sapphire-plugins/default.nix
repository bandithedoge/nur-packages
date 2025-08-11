{
  pkgs,
  sources,
  utils,
  ...
}:
let
  date = pkgs.lib.splitString "-" sources.sapphire-plugins.date;
in
pkgs.stdenv.mkDerivation {
  inherit (sources.sapphire-plugins) pname src;
  version = sources.sapphire-plugins.date;

  nativeBuildInputs = with pkgs; [
    cmake
    git
    ninja
    pkg-config
  ];

  buildInputs = utils.juce.commonBuildInputs;

  cmakeFlags = [
    "-DVST3_SDK_ROOT=${sources.vst3sdk.src}"
    "-DGIT_COMMIT_HASH=${sources.sapphire-plugins.src.rev}"
    "-DCOPY_AFTER_BUILD=FALSE"
  ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/lib/{clap,vst3}
    cp Sapphire.clap $out/lib/clap
    cp -r Release/Sapphire.vst3 $out/lib/vst3

    runHook postInstall
  '';

  postPatch = ''
    substituteInPlace CMakeLists.txt \
      --replace-fail "%j" ${builtins.toString ((pkgs.lib.toIntBase10 (builtins.elemAt date 1)) * 2)} \
      --replace-fail "%Y" ${builtins.toString ((pkgs.lib.toInt (builtins.elemAt date 0)) + 2021)}

    ln -sf ${pkgs.cpm-cmake}/share/cpm/CPM.cmake libs/clap-libs/clap-wrapper/cmake/external/CPM.cmake
  '';

  hardeningDisable = [ "format" ];
}
