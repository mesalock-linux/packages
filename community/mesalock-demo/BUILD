pkgname=mesalock-demo
pkgver=
pkgdesc="Several demos of Mesalock Linux"
license=(BSD)

prepare() {
  # Rusty-machine
  git clone -b v0.5.4 https://github.com/AtheMathmo/rusty-machine.git "$srcdir"/rusty-machine
}

build_rusty_machine_examples() {
  rusty_machine_srcdir="$srcdir"/rusty-machine
  cd "$rusty_machine_srcdir" && cargo build --examples --release
  install -D -m755 "$rusty_machine_srcdir"/target/release/examples/{k-means_generating_cluster,naive_bayes_dogs,nnet-and_gate,svm-sign_learner} -t "$pkgdir"/root/mesalock-demo/rusty-machine/
}

build() {
  build_rusty_machine_examples
}
