# This is not an actual port and just exists so that the grub source code is
# distributed in port dumps because the release images contain grub.
version=2.04
src_url=https://ftp.gnu.org/gnu/grub/grub-$version.tar.xz
src_type=tar.xz
src_sha256=e5292496995ad42dabe843a0192cf2a2c502e7ffcc7479398232b10a472df77d

build() {
    echo "Cannot build grub: This is not an actual port." >&2
    return 1
}
