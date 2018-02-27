pkgname=swindon
pkgver=
pkgdesc="An HTTP edge (frontend) server with smart websockets support"
url="https://swindon-rs.github.io/swindon/"
license=(Apache MIT)

prepare() {
  git clone -b master https://github.com/swindon-rs/swindon.git "$srcdir"
}

build() {
  cd "$srcdir" && cargo install --root "$pkgdir" && rm -f "$pkgdir"/.crates.toml
}
