{
  pkgs,
  sources,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.luakit) pname src;
  version = sources.luakit.date;

  nativeBuildInputs = with pkgs; [
    pkg-config
    wrapGAppsHook
  ];

  buildInputs = with pkgs;
    [
      glib-networking
      gtk3
      luajit
      luajitPackages.luafilesystem
      sqlite
      webkitgtk_4_1
    ]
    ++ (with pkgs.gst_all_1; [
      gstreamer
      gst-plugins-base
      gst-plugins-good
      gst-plugins-bad
      gst-plugins-ugly
      gst-libav
    ]);

  enableParallelBuilding = true;

  makeFlags = [
    "INSTALLDIR=${placeholder "out"}"
    "PREFIX=${placeholder "out"}"
    "XDGPREFIX=${placeholder "out"}/etc/xdg"
  ];

  preFixup = let
    luaKitPath = "$out/share/luakit/lib/?/init.lua;$out/share/luakit/lib/?.lua";
  in ''
    gappsWrapperArgs+=(
      --prefix XDG_CONFIG_DIRS : "$out/etc/xdg"
      --prefix LUA_PATH ';' "${luaKitPath};$LUA_PATH"
      --prefix LUA_CPATH ';' "$LUA_CPATH"
    )
  '';

  preBuild = ''
    export LUA_PATH="$LUA_PATH;./?.lua;./?/init.lua"
  '';

  meta = with pkgs.lib; {
    description = "Fast, small, webkit based browser framework extensible by Lua.";
    homepage = "https://luakit.github.io/";
    license = licenses.gpl3;
    platforms = platforms.linux;
    broken = true;
  };
}
