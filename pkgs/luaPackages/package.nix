{
  sources,

  cairo,
  gobject-introspection,
  lib,
  luaPackages,
  pkg-config,
  stdenv,
}:
{
  lua-dbus_proxy = luaPackages.buildLuarocksPackage {
    inherit (sources.lua-dbus_proxy) src pname;
    version = sources.lua-dbus_proxy.date;

    propagatedBuildInputs = with luaPackages; [ lgi ];
    knownRockspec = "rockspec/dbus_proxy-devel-1.rockspec";

    postPatch = ''
      substituteInPlace rockspec/dbus_proxy-devel-1.rockspec \
        --replace-fail "lgi >= 0.9.0, < 1" "lgi >= 0.9.0"
    '';

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

    knownRockspec = src + "/astal-dev-2.rockspec";

    propagatedBuildInputs = with luaPackages; [
      argparse
      lgi
    ];

    passthru._ignoreDupe = true;

    meta = with lib; {
      description = "Lua bindings for libastal";
      homepage = "https://github.com/tokyob0t/astal-lua";
      license = licenses.lgpl21Plus;
    };
  };

  luarocks-build-fennel = luaPackages.buildLuarocksPackage rec {
    inherit (sources.luarocks-build-fennel) pname src;
    version = sources.luarocks-build-fennel.date;

    knownRockspec = "${src}/rockspecs/${pname}-scm-1.rockspec";

    propagatedBuildInputs = with luaPackages; [
      fennel
    ];

    meta = with lib; {
      description = "Teach LuaRocks how to build your Fennel rock";
      homepage = "https://sr.ht/~xerool/luarocks-build-fennel/";
      license = licenses.mit;
    };
  };

  lgi = luaPackages.buildLuarocksPackage rec {
    inherit (sources.lgi) pname src;
    version = sources.lgi.date;

    knownRockspec = "${src}/lgi-scm-1.rockspec";

    nativeBuildInputs = [
      pkg-config
    ];

    buildInputs = [
      cairo
      gobject-introspection
    ];

    passthru._ignoreDupe = true;

    meta = with lib; {
      description = "Dynamic Lua binding to GObject libraries using GObject-Introspection";
      homepage = "https://github.com/lgi-devs/lgi";
      license = licenses.mit;
    };
  };
}
