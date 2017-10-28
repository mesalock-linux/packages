pkgname=exa
pkgver=

prepare() {
  git clone https://github.com/ogham/exa.git $srcdir
}

build() {
  cd $srcdir && cargo install --no-default-features --root $pkgdir && rm -f $pkgdir/.crates.toml
}
