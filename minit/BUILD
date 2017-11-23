pkgname=minit
pkgver=
pkgdesc="init tool written in Rust."
license=(BSD)

prepare() {
  git clone -b 685ada71ce42469cc6e5995e7faef475062b493c http://$GIT_USERNAME:$GIT_PASSWORD@172.19.62.4/mesalock-linux/minit.git "$srcdir"
}

build() {
  cd "$srcdir" && cargo build --release
  install -D -m744 "$srcdir"/target/release/minit "$pkgdir"/init
}
