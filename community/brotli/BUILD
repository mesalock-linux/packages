pkgname=brotli
pkgver=
pkgdesc="Brotli compression format"
url="https://github.com/dropbox/rust-brotli"
license=(BSD)

prepare() {
  git clone https://github.com/dropbox/rust-brotli.git "$srcdir"
  cd "$srcdir" && git checkout -b e275374e6c5ae49e5a33d0e3145da523194a6a97
}

check() {
  cd "$srcdir" && cargo test
}

build() {
  cd "$srcdir" && cargo install --root "$pkgdir" && rm -f "$pkgdir"/.crates.toml
}
