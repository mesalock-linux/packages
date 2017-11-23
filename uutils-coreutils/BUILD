pkgname=uutils-coreutils
pkgver=
pkgdesc="Cross-platform Rust rewrite of the GNU coreutils."
license=(MIT)

prepare() {
  git clone https://github.com/uutils/coreutils.git "$srcdir"
  cp "$pkgrepo"/"$pkgname"/001-makefile-libstdbuf.patch "$srcdir"
}

build() {
  cd "$srcdir"
  git apply 001-makefile-libstdbuf.patch
}

package() {
  cd "$srcdir"
  # skip hashsum because it depends on rust-crypto (with C library)
  make MULTICALL=y SKIP_UTILS=hashsum PREFIX="$pkgdir" install
}
