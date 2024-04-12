{ pkgs ? import ./pinned.nix { } }:

import
  (
    pkgs.fetchFromGitHub {
      owner = "justinwoo";
      repo = "easy-purescript-nix";
      rev = "117fd96acb69d7d1727df95b6fde9d8715e031fc";
      sha256 = "lcIRIOFCdIWEGyKyG/tB4KvxM9zoWuBRDxW+T+mvIb0=";
    }
  ) {
  inherit pkgs;
}
