pkgname=fd-find
pkgver=

prepare() {
  git clone https://github.com/sharkdp/fd.git $pkgname
}

configure() {
  :
}

compile() {
  cd $pkgname
  cargo build --release
}

install() {
  cp $pkgname/target/release/fd $ROOTFS/bin/
}
