pkgname=exa
pkgver=0.8.0
pkgdesc="Replacement for 'ls' written in Rust."
url="https://the.exa.website/"
license=(MIT)

prepare() {
  git clone -b v0.8.0 https://github.com/ogham/exa.git "$srcdir"
}

build() {
  cd "$srcdir" && cargo install --no-default-features --root "$pkgdir" && rm -f "$pkgdir/.crates.toml"
}
