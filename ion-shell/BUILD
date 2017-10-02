pkgname=ion-shell
pkgver=

prepare() {
  git clone https://github.com/redox-os/ion.git $srcdir
}

build() {
  cd $srcdir
  cargo update -p liner # make sure liner is updated regardless of Cargo.lock
  cargo install --root $pkgdir
}

package() {
  ln -s ion $pkgdir/bin/sh
}
