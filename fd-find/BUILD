pkgname=fd-find
pkgver=

prepare() {
  git clone https://github.com/sharkdp/fd.git $srcdir
}

build() {
  cd $srcdir && cargo build --release
}

package() {
  install -D $srcdir/target/release/fd -t $pkgdir/bin/
}
