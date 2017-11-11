pkgname=xi-core
pkgver=
pkgdesc="A modern editor with a backend written in Rust."
license=(Apache-2.0)

prepare() {
  git clone https://github.com/google/xi-editor.git $srcdir
}

build() {
  cd $srcdir/rust && cargo build --release
}

package() {
  install -D $srcdir/rust/target/release/xi-core -t $pkgdir/bin/
}
