pkgname=mgetty
pkgver=
pkgdesc="getty written in Rust."

prepare() {
  git clone http://$GIT_USERNAME:$GIT_PASSWORD@172.19.62.4/mesalock-linux/mgetty.git $srcdir
}

build() {
  cd $srcdir && cargo build --release
  install -D -m744 $srcdir/target/release/mgetty $pkgdir/bin/mgetty
}
