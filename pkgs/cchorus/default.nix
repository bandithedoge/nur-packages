{
  sources,

  lib,
  stdenv,

  pkg-config,
}:
stdenv.mkDerivation {
  inherit (sources.cchorus) pname src;
  version = lib.removePrefix "v" sources.cchorus.version;

  nativeBuildInputs = [
    pkg-config
  ];

  makeFlags = [ "PREFIX=${placeholder "out"}" ];

  postPatch = ''
    patchShebangs dpf/utils/generate-ttl.sh
  '';

  meta = with lib; {
    description = "Versatile stereo chorus, multi-format audio effect plugin";
    homepage = "https://github.com/SpotlightKid/cchorus";
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
