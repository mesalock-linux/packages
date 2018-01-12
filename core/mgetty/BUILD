pkgname=mgetty
pkgver=
pkgdesc="getty written in Rust."
license=(BSD)

prepare() {
  git clone https://github.com/mesalock-linux/mgetty.git "$srcdir"
  cd "$srcdir" && git checkout -b fd191a6a3d0cab40cf1342bdf9766a08147bfb33
}

build() {
  cd "$srcdir" && cargo build --release
  install -D -m744 "$srcdir"/target/release/mgetty "$pkgdir"/bin/mgetty
}
