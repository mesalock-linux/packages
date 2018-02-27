pkgname=linux
pkgver=4.9.58
pkgdesc="Linux kernel"
license=(GPL2)

prepare() {
  cd "$srcdir"
  wget -qO- "https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.58.tar.xz"  | tar Jxf -
  cp "$pkgrepo/$pkgname"/config "$builddir"/.config
  cd "$srcdir/${pkgname}-${pkgver}"
  make -C "$srcdir/${pkgname}-${pkgver}" O="$builddir" ARCH="x86_64" silentoldconfig
}

build() {
  cd "$builddir"
  make ARCH=x86_64 CC=gcc KBUILD_BUILD_VERSION="4.9.58-Mesalock" bzImage
}

package() {
  install -Dm644 "$builddir"/arch/x86_64/boot/bzImage "$pkgdir"/boot/vmlinuz
}
