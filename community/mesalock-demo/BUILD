pkgname=mesalock-demo
pkgver=
pkgdesc="Several demos of Mesalock Linux"
license=(BSD)

prepare() {
  # Rocket
  git clone -b v0.3.6 https://github.com/SergioBenitez/Rocket.git "$srcdir"/Rocket
  cp -r "$pkgrepo"/"$pkgname"/Rocket.toml "$srcdir"/Rocket

  # Rusty-machine
  git clone -b v0.5.4 https://github.com/AtheMathmo/rusty-machine.git "$srcdir"/rusty-machine

}

build_rocket_examples() {
  rocket_srcdir="$srcdir"/Rocket

  # Rocket hello_world
  cd "$rocket_srcdir"/examples/hello_world && cargo build --release
  install -D -m755 "$rocket_srcdir"/target/release/hello_world -t "$pkgdir"/root/mesalock-demo/rocket-hello-world/
  cat "$rocket_srcdir"/Rocket.toml >> "$pkgdir"/root/mesalock-demo/rocket-hello-world/Rocket.toml

  # Rocket tls
  cd "$rocket_srcdir"/examples/tls && cargo build --release
  install -D -m755 "$rocket_srcdir"/target/release/tls -t "$pkgdir"/root/mesalock-demo/rocket-tls/
  cp -r "$rocket_srcdir"/examples/tls/{Rocket.toml,private} "$pkgdir"/root/mesalock-demo/rocket-tls/
  cat "$rocket_srcdir"/Rocket.toml >> "$pkgdir"/root/mesalock-demo/rocket-tls/Rocket.toml
}

build_rusty_machine_examples() {
  rusty_machine_srcdir="$srcdir"/rusty-machine
  cd "$rusty_machine_srcdir" && cargo build --examples --release
  install -D -m755 "$rusty_machine_srcdir"/target/release/examples/{k-means_generating_cluster,naive_bayes_dogs,nnet-and_gate,svm-sign_learner} -t "$pkgdir"/root/mesalock-demo/rusty-machine/
}

build() {
  build_rocket_examples
  build_rusty_machine_examples
}
