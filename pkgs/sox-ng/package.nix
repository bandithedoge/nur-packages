{
  sources,

  config,
  lib,
  stdenv,

  alsa-lib,
  amrnb,
  amrwb,
  autoreconfHook,
  fftw,
  flac,
  lame,
  libao,
  libid3tag,
  libmad,
  libogg,
  libpng,
  libsndfile,
  libvorbis,
  opusfile,
  pkg-config,
  pulseaudio,
  twolame,
  wavpack,

  enableAMR ? false,
  enableAlsa ? stdenv.isLinux,
  enableFLAC ? true,
  enableId3tag ? true,
  enableLame ? config.sox.enableLame or true,
  enableLibao ? true,
  enableLibmad ? true,
  enableLibogg ? true,
  enableLibpulseaudio ? stdenv.isLinux,
  enableLibsndfile ? true,
  enableOpusfile ? true,
  enablePNG ? true,
  enableTwolame ? true,
  enableWavpack ? true,
  preferCurl ? true,
  replaceSox ? true,
}:
stdenv.mkDerivation {
  inherit (sources.sox-ng) pname src;
  version = sources.sox-ng.date;

  nativeBuildInputs = [
    autoreconfHook
    pkg-config
  ];

  buildInputs = [
    fftw
  ]
  ++ lib.optional enableAlsa alsa-lib
  ++ lib.optional enableFLAC flac
  ++ lib.optional enableId3tag libid3tag
  ++ lib.optional enableLame lame
  ++ lib.optional enableLibao libao
  ++ lib.optional enableLibmad libmad
  ++ lib.optional enableLibpulseaudio pulseaudio
  ++ lib.optional enableLibsndfile libsndfile
  ++ lib.optional enableOpusfile opusfile
  ++ lib.optional enablePNG libpng
  ++ lib.optional enableTwolame twolame
  ++ lib.optional enableWavpack wavpack
  ++ lib.optionals enableAMR [
    amrnb
    amrwb
  ]
  ++ lib.optionals enableLibogg [
    libogg
    libvorbis
  ];

  configureFlags = [
    "--with-distro=NixOS"
  ]
  ++ lib.optional preferCurl "--with-curl"
  ++ lib.optional replaceSox "--enable-replace";

  enableParallelBuilding = true;
  hardeningDisable = [ "format" ];

  meta = with lib; {
    description = "Another Swiss Army Knife of sound processing utilities";
    homepage = "https://codeberg.org/sox_ng/sox_ng";
    license = licenses.gpl2Plus;
    platforms = platforms.unix;
  };
}
