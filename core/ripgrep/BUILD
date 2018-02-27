pkgname=ripgrep
pkgver=0.8.0
pkgdesc="ripgrep combines the usability of The Silver Searcher with the raw speed of grep."
url="https://github.com/BurntSushi/ripgrep"
license=(MIT Unlicense)

prepare() {
  git clone -b 0.8.0 https://github.com/BurntSushi/ripgrep.git "$srcdir"
}

build() {
  cd "$srcdir" && cargo build --release
}

check() {
  cd "$srcdir"
  cargo test
}

package() {
  install -D "$srcdir"/target/release/rg -t "$pkgdir"/bin/
}
