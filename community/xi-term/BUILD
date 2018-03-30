pkgname=xi-term
pkgver=
pkgdesc="A terminal frontend for Xi."
url="https://github.com/xi-frontend/xi-term"
license=(MIT)

prepare() {
  git clone https://github.com/xi-frontend/xi-term.git "$srcdir"
  cd "$srcdir" && git checkout -b 0d43e263b21dc88c5826264672dc5543366fbceb
}

build() {
  cd "$srcdir" && cargo build --release
}

package() {
  install -D "$srcdir"/target/release/xi-term -t "$pkgdir"/bin/
}
