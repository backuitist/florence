let
  nixpkgs = import <nixpkgs> {};
  version = "0.6.3";
in
 nixpkgs.stdenv.mkDerivation {
   name = "florence-${version}";
   src = fetchGit ./.;
   buildInputs = with nixpkgs; [ intltool pkgconfig glib cairo libxml2 # gnome-doc-utils gnome2.scrollkeeper
                                 gst_all_1.gstreamer gnome3.librsvg gnome3.gtk libnotify
                                 xorg.libXtst which libxslt ];
   configureFlags = "--without-at-spi --without-docs";
   meta = {
     description = "A virtual keyboard";
   };
 }
