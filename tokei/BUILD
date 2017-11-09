pkgname=tokei
pkgver=
pkgdesc="A program that allows you to count your code, quickly."

prepare() {
  git clone https://github.com/Aaronepower/tokei.git $srcdir
}

build() {
  cd $srcdir && cargo install --root $pkgdir && rm -f $pkgdir/.crates.toml
}
