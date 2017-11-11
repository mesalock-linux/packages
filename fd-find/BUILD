pkgname=fd-find
pkgver=
pkgdesc="A simple, fast and user-friendly alternative to find."
license=(MIT Apache-2.0)

prepare() {
  git clone https://github.com/sharkdp/fd.git $srcdir
}

build() {
  cd $srcdir && cargo install --root $pkgdir && rm -f $pkgdir/.crates.toml
}
