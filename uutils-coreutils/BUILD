pkgname=uutils-coreutils
pkgver=
pkgdesc="Cross-platform Rust rewrite of the GNU coreutils."
license=(MIT)

prepare() {
  git clone https://github.com/uutils/coreutils.git $srcdir
}

build() {
  cd $srcdir
  wget https://gist.github.com/mssun/fbc3f9297ca585924e1ac4e3279074af/raw/755b6beae4880a790d199eefb657d2043deb122b/coreutils.patch
  git apply coreutils.patch
}

package() {
  cd $srcdir
  # skip hashsum because it depends on rust-crypto (with C library)
  make MULTICALL=y SKIP_UTILS=hashsum PREFIX=$pkgdir install
}
