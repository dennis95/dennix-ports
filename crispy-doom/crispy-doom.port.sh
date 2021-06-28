depends="doom-shareware libSDL2 libSDL2_mixer libz"
version=5.10.1
src_url=https://github.com/fabiangreffrath/crispy-doom
src_type=git
src_commit=3ee72e2dd807cfd97880c3bfeeaa42af403db246
patches=0001-Port-to-Dennix.patch
buildsystem=configure
# We don't have libSDL2_net, so we have to set these to some dummy values.
extra_configure_flags="SDLNET_CFLAGS=-DWITHOUT_SDLNET SDLNET_LIBS=-lc"
license_files=COPYING.md

prepare_source() {
    autoreconf -fi
}

install_port() {
    # 'make install' is installing too much stuff that we don't need.
    cd "$builddir"
    mkdir installdir
    make install-strip DESTDIR="$builddir/installdir"
    cp -f "$builddir/installdir/bin/crispy-doom" "$SYSROOT/bin"
    cp -f "$builddir/installdir/bin/crispy-doom-setup" "$SYSROOT/bin"
}
