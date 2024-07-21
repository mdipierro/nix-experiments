# save this as shell.nix
{ pkgs ? import <nixpkgs> {}}:

pkgs.mkShell {
  packages = [ 
    pkgs.python312
    pkgs.python312Packages.opencv4
  ];
}
