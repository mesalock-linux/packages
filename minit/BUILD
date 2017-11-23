pkgname=minit
pkgver=
pkgdesc="init tool written in Rust."
license=(BSD)

prepare() {
  git clone http://$GIT_USERNAME:$GIT_PASSWORD@172.19.62.4/mesalock-linux/minit.git "$srcdir"
}

build() {
  cd "$srcdir" && cargo build --release
  install -D -m744 "$srcdir"/target/release/minit "$pkgdir"/init
}
