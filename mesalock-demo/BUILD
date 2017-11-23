pkgname=mesalock-demo
pkgver=
pkgdesc="Several demos of Mesalock Linux"
license=(BSD)

prepare() {
  # Rocket
  git clone https://github.com/SergioBenitez/Rocket.git "$srcdir"
  cp -r "$pkgrepo"/"$pkgname"/Rocket.toml "$srcdir"
}

build() {
  # Rocket hello_world
  cd "$srcdir"/examples/hello_world && cargo build --release
  install -D -m755 "$srcdir"/target/release/hello_world -t "$pkgdir"/root/mesalock-demo/rocket-hello-world/
  cat "$srcdir"/Rocket.toml >> "$pkgdir"/root/mesalock-demo/rocket-hello-world/Rocket.toml

  # Rocket tls
  cd "$srcdir"/examples/tls && cargo build --release
  install -D -m755 "$srcdir"/target/release/tls -t "$pkgdir"/root/mesalock-demo/rocket-tls/
  cp -r "$srcdir"/examples/tls/{Rocket.toml,private} "$pkgdir"/root/mesalock-demo/rocket-tls/
  cat "$srcdir"/Rocket.toml >> "$pkgdir"/root/mesalock-demo/rocket-tls/Rocket.toml
}
