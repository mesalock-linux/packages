pkgname=gcc-libs
pkgver=7.2.0
pkgdesc="GLibc library, only libgcc_s.so is used"
license=(GPL LGPL)

prepare() {
  cd $srcdir
  wget -qO- "ftp://ftp.gnu.org/gnu/gcc/gcc-$pkgver/gcc-$pkgver.tar.xz"  | tar xfJ -
}

build() {
  cd $builddir
  $srcdir/gcc-${pkgver}/configure --prefix=/usr \
      --libdir=/usr/lib \
      --libexecdir=/usr/lib \
      --mandir=/usr/share/man \
      --infodir=/usr/share/info \
      --with-bugurl=https:// \
      --enable-languages=c,c++ \
      --enable-shared \
      --enable-threads=posix \
      --enable-libmpx \
      --with-system-zlib \
      --with-isl \
      --enable-__cxa_atexit \
      --disable-libunwind-exceptions \
      --enable-clocale=gnu \
      --disable-libstdcxx-pch \
      --disable-libssp \
      --enable-gnu-unique-object \
      --enable-linker-build-id \
      --enable-lto \
      --enable-plugin \
      --enable-install-libiberty \
      --with-linker-hash-style=gnu \
      --enable-gnu-indirect-function \
      --disable-multilib \
      --disable-werror \
      --enable-checking=release \
      --enable-default-pie \
      --enable-default-ssp \
      --target=x86_64-linux-gnu
  make
}

package() {
  make -C $builddir/x86_64-linux-gnu/libgcc DESTDIR=$pkgdir install-shared
}
