{
  sources,

  lib,
  stdenv,

  libopenmpt,
  meson,
  ninja,
  pkg-config,
}:
stdenv.mkDerivation {
  inherit (sources.modstems) pname src;
  version = sources.modstems.date;

  nativeBuildInputs = [
    meson
    ninja
    pkg-config
  ];

  buildInputs = [
    libopenmpt.dev
  ];

  meta = with lib; {
    description = "Dumps \"stems\" from module files using libopenmpt ";
    homepage = "https://github.com/bandithedoge/modstems";
    license = licenses.mit;
    platforms = platforms.unix;
  };
}
