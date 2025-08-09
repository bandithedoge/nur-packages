{ pkgs, sources, ... }:
pkgs.stdenv.mkDerivation {
  inherit (sources.cchorus) pname src;
  version = pkgs.lib.removePrefix "v" sources.cchorus.version;

  nativeBuildInputs = with pkgs; [
    pkg-config
  ];

  makeFlags = [ "PREFIX=${placeholder "out"}" ];

  postPatch = ''
    patchShebangs dpf/utils/generate-ttl.sh
  '';

  meta = with pkgs.lib; {
    description = "Versatile stereo chorus, multi-format audio effect plugin";
    homepage = "https://github.com/SpotlightKid/cchorus";
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
