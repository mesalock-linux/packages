pkgname=coreutils
pkgver=

prepare() {
  git clone https://github.com/uutils/coreutils.git
}

configure() {
  cd coreutils
  wget https://gist.github.com/mssun/fbc3f9297ca585924e1ac4e3279074af/raw/755b6beae4880a790d199eefb657d2043deb122b/coreutils.patch
  git apply coreutils.patch
}

compile() {
}

install() {
  cd coreutils
  make MULTICALL=y PREFIX=$ROOTFS install
}
