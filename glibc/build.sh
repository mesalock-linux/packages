pkgname=glibc
pkgver=2.26

prepare() {
  wget -qO- "http://ftp.gnu.org/gnu/glibc/glibc-$pkgver.tar.gz"  | tar zxf -
}

configure() {
  mkdir -p glibc-build && cd glibc-build
  echo "slibdir=/lib" >> configparms
  echo "rtlddir=/lib" >> configparms
  echo "sbindir=/bin" >> configparms
  echo "rootsbindir=/bin" >> configparms
  ../${pkgname}-${pkgver}/configure \
      --prefix= \
      --libdir=/lib \
      --libexecdir=/lib \
      --enable-add-ons \
      --enable-bind-now \
      --disable-profile \
      --enable-stackguard-randomization \
      --enable-stack-protector=strong \
      --enable-lock-elision \
      --enable-multi-arch \
      --disable-werror
}

compile() {
  cd glibc-build

  # build libraries with fortify disabled
  echo "build-programs=no" >> configparms
  make

  # re-enable fortify for programs
  sed -i "/build-programs=/s#no#yes#" configparms

  echo "CC += -D_FORTIFY_SOURCE=2" >> configparms
  echo "CXX += -D_FORTIFY_SOURCE=2" >> configparms
  make

  mkdir -p install-root
  make install_root=$(pwd)/install-root install
}

install() {
  cp glibc-build/install-root/lib/{libc.so.6,libdl.so.2,libm.so.6,libpthread.so.0,librt.so.1,ld-linux-x86-64.so.2} $ROOTFS/lib/
  # Do not strip the following files for improved debugging support
  # ("improved" as in not breaking gdb and valgrind...):
  #   ld-${pkgver}.so
  #   libc-${pkgver}.so
  #   libpthread-${pkgver}.so
  #   libthread_db-1.0.so
  strip --strip-unneeded $ROOTFS/lib/{libdl.so.2,libm.so.6,librt.so.1}
  ln -srf $ROOTFS/lib/ld-linux-x86-64.so.2 $ROOTFS/lib64/ld-linux-x86-64.so.2
}
