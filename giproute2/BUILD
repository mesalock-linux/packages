pkgname=giproute2
pkgver=
pkgdesc="iproute2 written in Golang."
license=(BSD)

prepare() {
  git clone http://$GIT_USERNAME:$GIT_PASSWORD@172.19.62.4/mesalock-linux/giproute2.git "$srcdir"
}

build() {
  cd "$srcdir" && make
}

package() {
  install -D "$srcdir"/ip -t "$pkgdir"/bin/
}
