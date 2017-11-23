pkgname=brotli
pkgver=
pkgdesc="Brotli compression format"
url="https://github.com/dropbox/rust-brotli"
license=(BSD)

prepare() {
  git clone -b c8ad81e7ad5a33b18b284a058f33d34bec27fea3 https://github.com/dropbox/rust-brotli.git "$srcdir"
}

build() {
  cd "$srcdir" && cargo install --root "$pkgdir" && rm -f "$pkgdir"/.crates.toml
}
