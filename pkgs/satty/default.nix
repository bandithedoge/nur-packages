{
  pkgs,
  sources,
  ...
}:
pkgs.rustPlatform.buildRustPackage {
  inherit (sources.satty) pname src;
  version = pkgs.lib.removePrefix "v" sources.satty.version;
  cargoLock = sources.satty.cargoLock."Cargo.lock";

  nativeBuildInputs = with pkgs; [
    pkg-config
    copyDesktopItems
  ];

  buildInputs = with pkgs; [
    gtk4
    libadwaita
    libepoxy
  ];

  postInstall = ''
    mkdir -p $out/share/icons/hicolor/scalable/apps
    cp assets/satty.svg $out/share/icons/hicolor/scalable/apps
  '';

  meta = with pkgs.lib; {
    description = "Modern Screenshot Annotation. A tool inspired by Swappy and Flameshot";
    homepage = "https://github.com/gabm/satty";
    license = licenses.mpl20;
    platforms = platforms.linux;
  };
}
