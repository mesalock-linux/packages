pkgname=xi-tui
pkgver=

prepare() {
  git clone https://github.com/little-dude/xi-tui.git $srcdir
}

build() {
  cd $srcdir && cargo build --release
}

package() {
  install -D $srcdir/log_config.yaml -t $pkgdir/root
  install -D $srcdir/target/release/xi-tui -t $pkgdir/bin/
}
