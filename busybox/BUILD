pkgname=busybox
pkgver=1.27.2

prepare() {
  cd $srcdir
  wget -qO- "http://busybox.net/downloads/$pkgname-$pkgver.tar.bz2"  | tar xfj -
  make -C $srcdir/${pkgname}-${pkgver} O=$builddir ARCH="x86_64" defconfig
}

build() {
  cd $builddir
  make
}

package() {
  install -D -m755 $builddir/busybox $pkgdir/bin/busybox
}
