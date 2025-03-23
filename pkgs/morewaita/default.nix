{
  pkgs,
  sources,
  ...
}:
pkgs.stdenvNoCC.mkDerivation {
  inherit (sources.morewaita) pname src;
  version = sources.morewaita.date;

  nativeBuildInputs = with pkgs; [
    meson
    ninja
  ];

  meta = with pkgs.lib; {
    description = "An expanded Adwaita-styled companion icon theme with extra icons for popular apps to complement Gnome Shell's original icons";
    homepage = "https://github.com/somepaulo/MoreWaita";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
  };
}
