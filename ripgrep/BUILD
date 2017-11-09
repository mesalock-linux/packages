pkgname=ripgrep
pkgver=
pkgdesc="ripgrep combines the usability of The Silver Searcher with the raw speed of grep."

prepare() {
  git clone https://github.com/BurntSushi/ripgrep.git $srcdir
}

build() {
  cd $srcdir && ./compile
}

package() {
  install -D $srcdir/target/release/rg -t $pkgdir/bin/
}
