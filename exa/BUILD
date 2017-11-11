pkgname=exa
pkgver=
pkgdesc="Replacement for 'ls' written in Rust."
license=(MIT)

prepare() {
  git clone https://github.com/ogham/exa.git $srcdir
}

build() {
  cd $srcdir && cargo install --no-default-features --root $pkgdir && rm -f $pkgdir/.crates.toml
}
