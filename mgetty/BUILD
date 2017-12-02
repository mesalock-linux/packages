pkgname=mgetty
pkgver=
pkgdesc="getty written in Rust."
license=(BSD)

prepare() {
  git clone -b fd191a6a3d0cab40cf1342bdf9766a08147bfb33 https://github.com/mesalock-linux/mgetty.git "$srcdir"
}

build() {
  cd "$srcdir" && cargo build --release
  install -D -m744 "$srcdir"/target/release/mgetty "$pkgdir"/bin/mgetty
}
