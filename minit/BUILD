pkgname=minit
pkgver=

prepare() {
  git clone ssh://git@172.19.62.4:2222/mesalock-linux/minit.git $srcdir
}

build() {
  cd $srcdir && cargo build --release
  install -D -m744 $srcdir/target/release/minit $pkgdir/init
}
