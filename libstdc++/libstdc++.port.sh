src_url=https://github.com/dennis95/dennix-gcc
src_type=git
# We always build the latest commit.
buildsystem=configure
extra_configure_args="--disable-nls"
install_targets=install-strip
license_files="../COPYING.RUNTIME ../COPYING3"
purge="lib/libstdc++.la lib/libsupc++.la"

prepare() {
    srcdir="$srcdir/libstdc++-v3"
}
