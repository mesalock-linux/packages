pkgname=tokei
pkgver=7.0.0
pkgdesc="A program that allows you to count your code, quickly."
url="https://github.com/Aaronepower/tokei"
license=(MIT Apache-2.0)

prepare() {
  git clone -b v7.0.0 https://github.com/Aaronepower/tokei.git "$srcdir"
}

build() {
  cd "$srcdir" && cargo install --root "$pkgdir" && rm -f "$pkgdir"/.crates.toml
}
