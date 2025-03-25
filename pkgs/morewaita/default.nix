{
  pkgs,
  sources,
  ...
}:
pkgs.stdenvNoCC.mkDerivation {
  inherit (sources.morewaita) pname src;
  version = sources.morewaita.date;

  nativeBuildInputs = with pkgs; [
    gtk3
    meson
    ninja
  ];

  propagatedBuildInputs = with pkgs; [
    adwaita-icon-theme
    adwaita-icon-theme-legacy
    hicolor-icon-theme
  ];

  postInstall = ''
    gtk-update-icon-cache -f $out/share/icons/MoreWaita
  '';

  dontDropIconThemeCache = true;

  meta = with pkgs.lib; {
    description = "An expanded Adwaita-styled companion icon theme with extra icons for popular apps to complement Gnome Shell's original icons";
    homepage = "https://github.com/somepaulo/MoreWaita";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
  };
}
