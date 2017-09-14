pkgname=filesystem

prepare() {
  cp -r $pkgrepo/$pkgname/* $srcdir
}

package() {
  cd "$pkgdir"

  # setup root filesystem
  for d in boot dev etc home mnt usr var; do
    install -d -m755 $d
  done
  install -d -m555 proc
  install -d -m555 sys
  install -d -m0750 root
  install -d -m1777 tmp

  for f in fstab group host.conf hosts issue motd passwd resolv.conf shells; do
    install -m644 "$srcdir"/$f etc/
  done
  ln -s ../proc/self/mounts etc/mtab

  ln -s usr/lib lib
  ln -s usr/lib lib64
  ln -s lib usr/lib64

  # add bin symlinks
  ln -s usr/bin bin
  ln -s usr/bin sbin
  ln -s bin usr/sbin
}
