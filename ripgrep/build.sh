pkgname=ripgrep
pkgver=

prepare() {
  git clone https://github.com/BurntSushi/ripgrep.git
}

configure() {
  :
}

compile() {
  cd $pkgname
  ./compile
}

install() {
  cp $pkgname/target/release/rg $ROOTFS/bin/
}
