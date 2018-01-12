pkgname=ion-shell
pkgver=
pkgdesc="ion shell, a shell written in Rust."
url="https://github.com/redox-os/ion"
license=(MIT)

prepare() {
  git clone -b 1.0.5 https://github.com/redox-os/ion.git "$srcdir"
}

build() {
  cd "$srcdir"
  cargo update -p liner # make sure liner is updated regardless of Cargo.lock
  cargo install --root "$pkgdir" && rm -f "$pkgdir"/.crates.toml
}

package() {
  ln -s ion "$pkgdir"/bin/sh
}
