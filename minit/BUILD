pkgname=minit
pkgver=

prepare() {
  git clone http://$GIT_USERNAME:$GIT_PASSWORD@172.19.62.4/mesalock-linux/minit.git $srcdir
}

build() {
  cd $srcdir && cargo build --release
  install -D -m744 $srcdir/target/release/minit $pkgdir/init
}
