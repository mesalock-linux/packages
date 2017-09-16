pkgname=brotli
pkgver=

prepare() {
  git clone https://github.com/dropbox/rust-brotli.git $srcdir
}

build() {
  cd $srcdir && cargo install --root $pkgdir
}
