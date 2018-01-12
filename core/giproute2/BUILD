pkgname=giproute2
pkgver=
pkgdesc="iproute2 written in Golang."
license=(BSD)

prepare() {
  git clone https://github.com/mesalock-linux/giproute2.git "$srcdir"
  cd "$srcdir" && git checkout -b 2e6eb9e88d50617db5c5540c7e6a623144d4698a
}

build() {
  cd "$srcdir" && make
}

package() {
  install -D "$srcdir"/ip -t "$pkgdir"/bin/
}
