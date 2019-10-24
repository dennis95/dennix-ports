depends="binutils libmpc libstdc++"
src_url=https://github.com/dennis95/dennix-gcc
src_type=git
# We always build the latest commit.
buildsystem=configure
extra_configure_flags="--target=$host --with-sysroot=/
--with-build-sysroot=$SYSROOT --with-system-zlib --enable-languages=c,c++
--disable-nls"
make_targets="all-gcc all-target-libgcc"
install_targets="install-strip-gcc install-strip-target-libgcc"
license_files="COPYING COPYING.LIB COPYING.RUNTIME COPYING3 COPYING3.LIB"
purge="libexec/gcc/$host/6.1.0/liblto_plugin.la"
