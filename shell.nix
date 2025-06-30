{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "dwm-shell";

  buildInputs = with pkgs; [
    xorg.libX11
    xorg.libXft
    xorg.libXinerama
    pkg-config
    gcc
    gnumake
    fribidi
  ];

  shellHook = ''
    echo "Enter your dwm build environment!"
  '';
}
