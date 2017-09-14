pkgname=fd-find
pkgver=

prepare() {
  git clone https://github.com/sharkdp/fd.git $srcdir
}

build() {
  cd $srcdir && cargo install --root $pkgdir
}
