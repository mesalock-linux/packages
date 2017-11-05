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

  # setup /etc
  for f in fstab group host.conf hosts issue motd nsswitch.conf \
  passwd resolv.conf shells; do
    install -m644 "$srcdir"/$f etc/
  done
  ln -s ../proc/self/mounts etc/mtab
  for f in gshadow shadow; do
    install -m600 "$srcdir"/$f etc/
  done
  install -Dm644 "$srcdir"/os-release usr/lib/os-release

  # setup /var
  for d in cache local opt log/old lib/misc empty; do
    install -d -m755 var/$d
  done
  install -d -m1777 var/{tmp,spool/mail}

  # setup /usr hierarchy
  for d in bin include lib share/misc src; do
    install -d -m755 usr/$d
  done

  # add lib symlinks
  ln -s usr/lib lib
  ln -s usr/lib lib64
  ln -s lib usr/lib64

  # add bin symlinks
  ln -s usr/bin bin
  ln -s usr/bin sbin
  ln -s bin usr/sbin

  # setup /usr/local hierarchy
  for d in bin etc games include lib man sbin share src; do
    install -d -m755 usr/local/$d
  done
}
