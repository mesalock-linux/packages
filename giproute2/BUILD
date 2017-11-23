pkgname=giproute2
pkgver=
pkgdesc="iproute2 written in Golang."
license=(BSD)

prepare() {
  git clone -b 2e6eb9e88d50617db5c5540c7e6a623144d4698a http://$GIT_USERNAME:$GIT_PASSWORD@172.19.62.4/mesalock-linux/giproute2.git "$srcdir"
}

build() {
  cd "$srcdir" && make
}

package() {
  install -D "$srcdir"/ip -t "$pkgdir"/bin/
}
