pkgname=ripgrep
pkgver=0.7.1
pkgdesc="ripgrep combines the usability of The Silver Searcher with the raw speed of grep."
url="https://github.com/BurntSushi/ripgrep"
license=(MIT Unlicense)

prepare() {
  git clone -b 0.7.1 https://github.com/BurntSushi/ripgrep.git "$srcdir"
}

build() {
  cd "$srcdir" && ./compile
}

package() {
  install -D "$srcdir"/target/release/rg -t "$pkgdir"/bin/
}
