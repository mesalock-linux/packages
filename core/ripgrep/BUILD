pkgname=ripgrep
pkgver=0.7.1
pkgdesc="ripgrep combines the usability of The Silver Searcher with the raw speed of grep."
url="https://github.com/BurntSushi/ripgrep"
license=(MIT Unlicense)

prepare() {
  git clone https://github.com/BurntSushi/ripgrep.git "$srcdir"
  cd "$srcdir" && git checkout -b 35f802166d1c5788e8c833f398d13b9c9e8cb360
}

build() {
  cd "$srcdir" && ./compile
}

package() {
  install -D "$srcdir"/target/release/rg -t "$pkgdir"/bin/
}
