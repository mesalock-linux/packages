pkgname=tokei
pkgver=

prepare() {
  git clone https://github.com/Aaronepower/tokei.git $srcdir
}

build() {
  cd $srcdir && cargo install --root $pkgdir
}
