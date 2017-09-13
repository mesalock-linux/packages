pkgname=ripgrep
pkgver=

prepare() {
  git clone https://github.com/BurntSushi/ripgrep.git $srcdir
}

build() {
  cd $srcdir && ./compile
}

package() {
  install -D $srcdir/target/release/rg -t $pkgdir/bin/
}
