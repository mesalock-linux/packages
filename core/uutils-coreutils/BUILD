pkgname=uutils-coreutils
pkgver=
pkgdesc="Cross-platform Rust rewrite of the GNU coreutils."
url="https://github.com/uutils/coreutils"
license=(MIT)

prepare() {
  git clone https://github.com/uutils/coreutils.git "$srcdir"
  cd "$srcdir" && git checkout -b 4d89c2d79602e1b166a455bef6785466efdcf137
}

build() {
  :
}

package() {
  cd "$srcdir"
  # skip hashsum and expr because it depends on rust-crypto (with C library)
  make MULTICALL=y SKIP_UTILS='hashsum expr' PREFIX="$pkgdir" install
}
