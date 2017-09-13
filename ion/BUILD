pkgname=ion
pkgver=

prepare() {
  git clone https://github.com/redox-os/ion.git $srcdir
}

build() {
  cd $srcdir
  cargo update -p liner # make sure liner is updated regardless of Cargo.lock
  cargo build --release
}

package() {
  install -D $srcdir/target/release/ion -t $pkgdir/bin
}
