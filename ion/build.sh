pkgname=ion
pkgver=

prepare() {
  git clone https://github.com/redox-os/ion.git
}

configure() {
  cd ion
  cargo update -p liner # make sure liner is updated regardless of Cargo.lock
}

compile() {
  cd ion
  cargo build --release
}

install() {
  cp ion/target/release/ion $ROOTFS/bin/
}
