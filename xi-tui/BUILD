pkgname=xi-tui
pkgver=
pkgdesc="a tui frontend for Xi."

prepare() {
  git clone https://github.com/little-dude/xi-tui.git $srcdir
}

build() {
  cd $srcdir && cargo build --release
}

package() {
  install -D $srcdir/target/release/xi-tui -t $pkgdir/bin/
}
