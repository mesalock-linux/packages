pkgname=findutils
pkgver=

prepare() {
  git clone https://github.com/uutils/findutils.git $srcdir
}

build() {
  cd $srcdir && cargo install --root $pkgdir
}
