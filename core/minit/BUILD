pkgname=minit
pkgver=
pkgdesc="init tool written in Rust."
license=(BSD)

prepare() {
  git clone https://github.com/mesalock-linux/minit.git "$srcdir"
  cd "$srcdir" && git checkout -b 685ada71ce42469cc6e5995e7faef475062b493c
}

build() {
  cd "$srcdir" && cargo build --release
  install -D -m744 "$srcdir"/target/release/minit "$pkgdir"/init
}
