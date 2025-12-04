{
  sources,

  appimageTools,
  lib,
}:
appimageTools.wrapType2 {
  inherit (sources.deemix-gui-bin) pname version src;

  meta = with lib; {
    description = "An electron app that wraps deemix-webui and lets you use the deemix-js library";
    homepage = "https://gitlab.com/RemixDev/deemix-gui";
    license = licenses.gpl3Plus;
    platforms = [ "x86_64-linux" ];
  };
}
