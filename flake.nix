{
  description = "dwm-flexipatch build environment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
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
      };
    };
}
