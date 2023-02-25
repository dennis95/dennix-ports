depends="liblzma libz"
version=1.1
src_url=https://github.com/dennis95/dxcompress/releases/download/dxcompress-$version/dxcompress-$version.tar.xz
src_type=tar.xz
src_sha256=89c1331a860467a58e0c69e54238fb29c7bdeb436672009efd61964fb6840dc6
buildsystem=configure
extra_configure_flags="--enable-wrappers=gzip,xz"
license_files=LICENSE
