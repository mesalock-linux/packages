pkgname=micro
pkgver=
pkgdesc="A modern and intuitive terminal-based text editor."
license=(MIT)

prepare() {
  export GOPATH="$srcdir"
  go get -d github.com/zyedidia/micro/cmd/micro
}

build() {
  cd "$srcdir"/src/github.com/zyedidia/micro && make
}

package() {
  install -D "$srcdir"/src/github.com/zyedidia/micro/micro -t "$pkgdir"/bin/
}
