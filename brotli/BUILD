pkgname=brotli
pkgver=
pkgdesc="Brotli compression format"

prepare() {
  git clone https://github.com/dropbox/rust-brotli.git $srcdir
}

build() {
  cd $srcdir && cargo install --root $pkgdir && rm -f $pkgdir/.crates.toml
}
