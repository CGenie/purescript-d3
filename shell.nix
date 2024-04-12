let
  pkgs = import <nixpkgs> {};
  default-shell = import (
    pkgs.fetchFromGitHub {
      owner = "garganscript";
      repo = "package-sets";
      rev = "master";
      sha256 = "RYFsTna5cg7EjynLvkFg87zTLSMeZw7DNIgPu9iXokk=";
    } + "/default-shell.nix");
in
pkgs.mkShell {
  name = "purescript-d3";

  buildInputs = [
    default-shell.purs
    default-shell.easy-ps.psc-package
    default-shell.easy-ps.spago
    default-shell.build
    default-shell.pkgs.dhall-json
    pkgs.esbuild
    pkgs.yarn
  ];
}
