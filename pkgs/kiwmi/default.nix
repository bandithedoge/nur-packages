{
  sources,

  stdenv,
  lib,

  git,
  libxkbcommon,
  lua,
  meson,
  ninja,
  pixman,
  pkg-config,
  udev,
  wayland,
  wayland-protocols,
  wlroots_0_17,
}:
stdenv.mkDerivation rec {
  inherit (sources.kiwmi) src pname;
  version = sources.kiwmi.date;

  nativeBuildInputs = [
    git
    meson
    ninja
    pkg-config
  ];

  buildInputs = [
    libxkbcommon
    lua
    pixman
    udev
    wayland
    wayland-protocols
    wlroots_0_17
  ];

  mesonBuildType = "release";
  mesonAutoFeatures = "auto";

  mesonFlags = [ "-Dkiwmi-version=${version}" ];

  meta = with lib; {
    description = "A fully programmable Wayland Compositor";
    homepage = "https://github.com/buffet/kiwmi";
    license = licenses.mpl20;
    platforms = platforms.linux;
    broken = true;
  };
}
