version=1.9
src_url=ftp://ftp.fu-berlin.de/pc/games/idgames/idstuff/doom/win95/doom95.zip
src_type=zip
src_sha256=7771ebd38d5099aee20a03103ff934e27bfe86693f11224f60a30cf41552dbed
buildsystem=none

prepare_source() {
    mkdir -p "$srcdir/doom-shareware"
    mv -f "$srcdir/DOOM1.WAD" "$srcdir/doom-shareware/doom1.wad"
    srcdir="$srcdir/doom-shareware"
}

install_port() {
    mkdir -p "$SYSROOT/share/games/doom"
    cp -f "$srcdir/doom1.wad" "$SYSROOT/share/games/doom"
}
