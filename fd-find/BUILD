pkgname=fd-find
pkgver=
pkgdesc="A simple, fast and user-friendly alternative to find."

prepare() {
  git clone https://github.com/sharkdp/fd.git $srcdir
}

build() {
  cd $srcdir && cargo install --root $pkgdir && rm -f $pkgdir/.crates.toml
}
