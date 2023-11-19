with import <nixpkgs> { };
pkgs.mkShell {
  buildInputs = with pkgs; [
    python3
    python3Packages.requests
    nix-prefetch
    nixpkgs-fmt
  ];
}
