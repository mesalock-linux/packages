pkgname=uutils-coreutils
pkgver=
pkgdesc="Cross-platform Rust rewrite of the GNU coreutils."
url="https://github.com/uutils/coreutils"
license=(MIT)

prepare() {
  git clone https://github.com/uutils/coreutils.git "$srcdir"
  cd "$srcdir" && git checkout -b 2db220e8201ea62e4cd343da45152319c8525e38
}

build() {
  :
}

package() {
  cd "$srcdir"
  # skip hashsum and expr because it depends on rust-crypto (with C library)
  make MULTICALL=y SKIP_UTILS='hashsum expr' PREFIX="$pkgdir" install
}
