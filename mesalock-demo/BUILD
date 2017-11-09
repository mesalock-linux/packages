pkgname=mesalock-demo
pkgver=
pkgdesc="Several demos of Mesalock Linux"

prepare() {
  git clone https://github.com/SergioBenitez/Rocket.git $srcdir
  cp -r $pkgrepo/$pkgname/Rocket.toml $srcdir
}

build() {
  cd $srcdir/examples/hello_world && cargo build --release
  cd $srcdir/examples/tls && cargo build --release
  install -D $srcdir/Rocket.toml -t $pkgdir/root/mesalock-demo/
  install -D -m755 $srcdir/target/release/hello_world -t $pkgdir/root/mesalock-demo/hello_world/
  install -D -m755 $srcdir/target/release/tls -t $pkgdir/root/mesalock-demo/tls/
  cp -r $srcdir/examples/tls/{Rocket.toml,private} $pkgdir/root/mesalock-demo/tls/
  cat $srcdir/Rocket.toml >> $pkgdir/root/mesalock-demo/tls/Rocket.toml
}
