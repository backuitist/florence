let
  nixpkgs = import <nixpkgs> {};
  version = "0.6.3";
in
 nixpkgs.stdenv.mkDerivation {
   name = "florence-${version}";
   src = ".";
   meta = {
     description = "A virtual keyboard";
   };
 }
