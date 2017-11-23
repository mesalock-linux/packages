pkgname=init
pkgdesc="init script"
license=(BSD)

prepare() {
  cp -r "$pkgrepo/$pkgname"/* $srcdir
}

package() {
  cd "$pkgdir"
  install -D -m744 "$srcdir"/init "$pkgdir"/init
}
