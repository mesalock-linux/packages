pkgname=xi-core
pkgver=

prepare() {
  git clone https://github.com/google/xi-editor.git $srcdir
}

build() {
  cd $srcdir/rust && cargo build --release
}

package() {
  install -D $srcdir/rust/target/release/xi-core -t $pkgdir/bin/
}
