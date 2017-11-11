pkgname=uutils-findutils
pkgver=
pkgdesc="Rust implementation of findutils"
license=(MIT)

prepare() {
  git clone https://github.com/uutils/findutils.git $srcdir
}

build() {
  cd $srcdir && cargo install --root $pkgdir && rm -f $pkgdir/.crates.toml
}
