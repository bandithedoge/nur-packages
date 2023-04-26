{
  pkgs,
  sources,
}:
pkgs.stdenv.mkDerivation {
  pname = "sheepshaver";
  version = sources.macemu.date;
  inherit (sources.macemu) src;

  nativeBuildInputs = with pkgs; [
    autoconf
    automake
    perl
    pkg-config
  ];

  buildInputs = with pkgs; [
    SDL2
    glibc_multi
    gtk2
  ];

  patches = [
    # adapted from https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/emulators/basiliskii/remove-redhat-6-workaround-for-scsi-sg.h.patch
    # SheepShaver/src/Unix/Linux/scsi_linux.cpp is a symlink so we have to patch the source file
    (pkgs.writeText "remove-redhat-6-workaround-for-scsi-sg.h.patch" ''
      diff --git a/BasiliskII/src/Unix/Linux/scsi_linux.cpp b/SheepShaver/src/Unix/Linux/scsi_linux.cpp
      --- a/BasiliskII/src/Unix/Linux/scsi_linux.cpp
      +++ b/BasiliskII/src/Unix/Linux/scsi_linux.cpp
      @@ -22,5 +22,5 @@
       #include <sys/ioctl.h>
       #include <linux/param.h>
      -#include <linux/../scsi/sg.h>	// workaround for broken RedHat 6.0 /usr/include/scsi
      +#include <scsi/sg.h>
       #include <unistd.h>
       #include <errno.h>
    '')
  ];

  preConfigure = ''
    cd SheepShaver/src/Unix # setting sourceRoot breaks the configure script
    NO_CONFIGURE=1 ./autogen.sh
  '';

  preBuild = ''
    patchShebangs ../kpx_cpu/src/cpu/ppc/genexec.pl
  '';

  configureFlags = [
    "--enable-sdl-audio"
    "--enable-sdl-video"
    "--enable-standalone-gui"
    "--with-bincue"
  ];

  meta = with pkgs.lib; {
    description = "A MacOS run-time environment for BeOS and Linux that allows you to run classic MacOS applications inside the BeOS/Linux multitasking environment.";
    homepage = "https://sheepshaver.cebix.net/";
    license = licenses.gpl2;
    platforms = platforms.linux;
  };
}
