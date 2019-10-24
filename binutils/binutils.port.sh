depends=libz
src_url=https://github.com/dennis95/dennix-binutils
src_type=git
# We always build the latest commit.
buildsystem=configure
extra_configure_flags="--with-system-zlib --disable-nls --disable-werror"
install_targets=install-strip
license_files="COPYING COPYING.LIB COPYING3 COPYING3.LIB"
purge="lib/libbfd.la lib/libopcodes.la"
