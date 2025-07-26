{pkgs, sources, ...}: pkgs.stdenv.mkDerivation {
  inherit (sources.snd2acm) pname src;
  version = pkgs.lib.removePrefix "v" sources.snd2acm.version;

  buildInputs = with pkgs; [
    libvorbis
  ];

  installPhase = ''
    runHook preInstall

    mkdir $out
    cp -r bin $out

    runHook postInstall
  '';

  meta = with pkgs.lib; {
    description = "Sound to ACM converter based on The DragonLance Total Conversion Editor Pro (DLTCEP) code";
    homepage = "https://github.com/dtiefling/snd2acm-portable";
    license = licenses.gpl2Plus;
    platforms = platforms.unix;
  };
}
