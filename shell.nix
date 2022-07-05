{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
    nativeBuildInputs = [ pkgs.buildPackages.qemu pkgs.buildPackages.unzip pkgs.buildPackages.curl ];
}
