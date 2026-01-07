{
  sources,

  fetchpatch,
  lib,
  stdenv,

  cmake,
  ninja,
  qt6,
}:
stdenv.mkDerivation {
  inherit (sources.vgmtrans) pname src;
  version = sources.vgmtrans.date;

  patches = [
    # XXX: https://github.com/vgmtrans/vgmtrans/pull/717
    (fetchpatch {
      url = "https://github.com/bandithedoge/vgmtrans/commit/a7efa092b04a91c25a8fd8cfde8c74b6215cbca7.patch";
      sha256 = "ihbabpTPmiZLT3e3pnd5k9BGL1VvakeBolGzxXM0mLs=";
    })
  ];

  nativeBuildInputs = [
    cmake
    ninja
    qt6.wrapQtAppsHook
  ];

  buildInputs = [
    qt6.qtbase
    qt6.qtsvg
  ];

  postBuild = ''
    mkdir -p $out/lib
  ''
  + (
    if stdenv.isAarch64 then
      ''
        cp $src/lib/bass/aarch64/*.so $out/lib/
      ''
    else
      ''
        cp $src/lib/bass/*.so $out/lib/
      ''
  );

  meta = with lib; {
    description = "A tool to convert proprietary, sequenced videogame music to industry-standard formats";
    homepage = "https://github.com/vgmtrans/vgmtrans";
    license = licenses.zlib;
    platforms = platforms.linux;
  };
}
