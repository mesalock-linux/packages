pkgname=xi-tui
pkgver=
pkgdesc="a tui frontend for Xi."
url="https://github.com/little-dude/xi-tui"
license=(MIT)

prepare() {
  git clone -b 032966b2bebc40c5d5401972e42aa07b821e8a72 https://github.com/little-dude/xi-tui.git "$srcdir"
}

build() {
  cd "$srcdir" && cargo build --release
}

package() {
  install -D "$srcdir"/target/release/xi-tui -t "$pkgdir"/bin/
}
