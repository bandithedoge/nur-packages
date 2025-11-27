{
  sources,

  lib,
  luaPackages,
}:
{
  lua-dbus_proxy = luaPackages.buildLuarocksPackage rec {
    inherit (sources.lua-dbus_proxy) src pname;
    version = sources.lua-dbus_proxy.date;

    propagatedBuildInputs = with luaPackages; [ lgi ];
    knownRockspec = src + "/rockspec/dbus_proxy-devel-1.rockspec";

    meta = with lib; {
      description = "Simple API around GLib's GIO:GDBusProxy built on top of lgi";
      homepage = "https://stefano-m.github.io/lua-dbus_proxy/";
      license = licenses.asl20;
    };
  };

  lua-dbus = luaPackages.buildLuarocksPackage rec {
    inherit (sources.lua-dbus) src pname;
    version = sources.lua-dbus.date;

    knownRockspec = src + "/${pname}-scm-0.rockspec";

    propagatedBuildInputs = with luaPackages; [ ldbus ];

    meta = with lib; {
      description = "convenient dbus api in lua";
      homepage = "https://github.com/dodo/lua-dbus";
      license = licenses.mit;
      broken = true;
    };
  };

  bling = luaPackages.buildLuarocksPackage rec {
    inherit (sources.bling) src pname;
    version = sources.bling.date;

    knownRockspec = "${pname}-dev-1.rockspec";

    preConfigure = "mv ${pname}-dev-2.rockspec ${pname}-dev-1.rockspec";

    meta = with lib; {
      description = "Utilities for the awesome window manager";
      homepage = "https://blingcorp.github.io/bling/";
      license = licenses.mit;
    };
  };

  astal-lua = luaPackages.buildLuarocksPackage rec {
    inherit (sources.astal-lua) pname src;
    version = sources.astal-lua.date;

    knownRockspec = src + "/astal-dev-1.rockspec";

    propagatedBuildInputs = with luaPackages; [
      lgi
    ];

    meta = with lib; {
      description = "Lua bindings for libastal";
      homepage = "https://github.com/tokyob0t/astal-lua";
      license = licenses.lgpl21Plus;
    };
  };
}
