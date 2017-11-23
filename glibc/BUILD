pkgname=glibc
pkgver=2.26
pkgdesc="Glibc"
license=(GPL LGPL)

prepare() {
  cd "$srcdir"
  wget -qO- "http://ftp.gnu.org/gnu/glibc/glibc-$pkgver.tar.gz"  | tar zxf -
}

build() {
  cd "$builddir"
  echo "slibdir=/usr/lib" >> configparms
  echo "rtlddir=/usr/lib" >> configparms
  echo "sbindir=/usr/bin" >> configparms
  echo "rootsbindir=/usr/bin" >> configparms
  "$srcdir/${pkgname}-${pkgver}/configure" \
      --prefix=/usr \
      --libdir=/usr/lib \
      --libexecdir=/usr/lib \
      --enable-add-ons \
      --enable-bind-now \
      --disable-profile \
      --enable-stackguard-randomization \
      --enable-stack-protector=strong \
      --enable-lock-elision \
      --enable-multi-arch \
      --disable-werror

  # build libraries with fortify disabled
  echo "build-programs=no" >> configparms
  make

  # re-enable fortify for programs
  sed -i "/build-programs=/s#no#yes#" configparms

  echo "CC += -D_FORTIFY_SOURCE=2" >> configparms
  echo "CXX += -D_FORTIFY_SOURCE=2" >> configparms
  make

  # mkdir -p install-root
  # make install_root=$(pwd)/install-root install
  make install_root="$pkgdir" install
}

package() {
  # install -D $builddir/install-root/usr/lib/{libc.so.6,libdl.so.2,libm.so.6,libpthread.so.0,librt.so.1,ld-linux-x86-64.so.2} -t $pkgdir/usr/lib/
  # Do not strip the following files for improved debugging support
  # ("improved" as in not breaking gdb and valgrind...):
  #   ld-${pkgver}.so
  #   libc-${pkgver}.so
  #   libpthread-${pkgver}.so
  #   libthread_db-1.0.so
  strip --strip-unneeded "$pkgdir"/usr/lib/{libdl.so.2,libm.so.6,librt.so.1}
}
