pkgname=syslinux
pkgver=6.04-pre1
pkgdesc="Syslinux bootloader"
license=(GPL)

prepare() {
  cd $srcdir
  wget -qO- "https://www.kernel.org/pub/linux/utils/boot/syslinux/Testing/6.04/syslinux-6.04-pre1.tar.xz"  | tar Jxf -
}

build() {
  cd $builddir
  mkdir install_root
  cd $srcdir/$pkgname-$pkgver && make installer && make -j1 INSTALLROOT=$builddir/install_root bios efi64 install
}

package() {
  for f in isolinux.bin ldlinux.c32 libcom32.c32 libutil.c32 mboot.c32; do
    install -D -m0644 $builddir/install_root/usr/share/syslinux/$f $pkgdir/boot/syslinux/$f
  done
  install -D -m0644 $pkgrepo/$pkgname/syslinux.cfg $pkgdir/boot/syslinux/syslinux.cfg
}
