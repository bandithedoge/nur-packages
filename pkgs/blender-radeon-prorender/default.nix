{
  pkgs,
  sources,
  blender ? pkgs.blender,
  ...
}:
pkgs.stdenv.mkDerivation {
  inherit (sources.blender-radeon-prorender) pname version src;

  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
    unzip
  ];

  buildInputs = with pkgs; [
    libGL
    rocmPackages.clr
    stdenv.cc.cc.lib
    vulkan-loader
  ];

  buildPhase = ''
    path=$out/share/blender/${pkgs.lib.versions.majorMinor blender.version}/scripts/addons/rprblender
    mkdir -p $path
    cp -r * $path
  '';

  meta = with pkgs.lib; {
    description = "This hardware-agnostic rendering plug-in for Blender uses accurate ray-tracing technology to produce images and animations of your scenes, and provides real-time interactive rendering and continuous adjustment of effects";
    homepage = "https://www.amd.com/en/products/graphics/software/radeon-prorender/blender.html";
    license = licenses.asl20;
    platforms = ["x86_64-linux"];
    sourceProvenance = [sourceTypes.binaryNativeCode];
  };
}
