{
  sources,

  lib,
  rustPlatform,
  stdenv,

  libGL,
  libxkbcommon,
  makeWrapper,
  vulkan-loader,
  wayland,
}:
let
  unwrapped = rustPlatform.buildRustPackage {
    inherit (sources.onagre) src;
    version = sources.onagre.date;
    pname = "onagre-unwrapped";
    cargoLock = sources.onagre.cargoLock."Cargo.lock";
  };
in
stdenv.mkDerivation rec {
  inherit (unwrapped) pname version src;

  nativeBuildInputs = [
    makeWrapper
  ];

  buildInputs = [
    wayland
    libxkbcommon
    libGL
    vulkan-loader
  ];

  buildPhase = ''
    runHook preBuild

    mkdir -p $out/bin

    makeWrapper ${unwrapped}/bin/onagre $out/bin/onagre \
      --prefix LD_LIBRARY_PATH : ${lib.makeLibraryPath buildInputs}

    runHook postBuild
  '';

  passthru = { inherit unwrapped; };

  meta = with lib; {
    description = "A general purpose application launcher for X and wayland inspired by rofi/wofi and alfred";
    homepage = "https://github.com/onagre-launcher/onagre";
    license = licenses.mit;
    platforms = [ "x86_64-linux" ];
  };
}
