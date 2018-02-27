pkgname=uutils-findutils
pkgver=
pkgdesc="Rust implementation of findutils"
url="https://github.com/uutils/findutils"
license=(MIT)

prepare() {
  git clone https://github.com/uutils/findutils.git "$srcdir"
  cd "$srcdir" && git checkout -b 2e6a268fa5682fc9ee07f8f8b9634051f6c0ef6f
}

check() {
  cd "$srcdir"
  cargo test
}

build() {
  cd "$srcdir" && cargo install --root "$pkgdir" && rm -f "$pkgdir"/.crates.toml
}
