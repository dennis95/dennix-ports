version=2.6.1
src_url=https://github.com/klange/bim
src_type=git
src_commit=cd56264339eaaa18732ead3962dc2823d4726525
patches=0001-Port-to-Dennix.patch
buildsystem=make
install_targets=install
license_files=LICENSE

post_install() {
    cat > "$SYSROOT/home/user/.bimrc" << EOF
rundir /share/bim/themes
theme ansi
theme sunsmoke
smartcomplete 1
EOF
}
