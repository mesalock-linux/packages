pkgname=pypy
pkgver=5.10.0
pkgdesc="PyPy is a fast, compliant alternative implementation of the Python
language (2.7.13 and 3.5.3). Note that this is a tailored version. We exclude
some modules which need native libraries written in C/C++."
url="https://pypy.org/index.html"
license=(MIT)

prepare() {
  cd "$srcdir"
  wget -qO- "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${pkgver}-src.tar.bz2"  | tar xfj -
}

build() {
  cd "$srcdir"/pypy2-v${pkgver}-src/pypy/goal

  ../../rpython/bin/rpython -Ojit --make-jobs=$(nproc) targetpypystandalone.py \
    --withoutmod-_cffi_backend \
    --withoutmod-zipimport \
    --withoutmod-_minimal_curses \
    --withoutmod-bz2 \
    --withoutmod-zlib \
    --withoutmod-_rawffi \
    --withoutmod-pyexpat \
    --withoutmod-_random \
    --withoutmod-crypt \
    --withoutmod-_ssl \
    --withoutmod-_cppyy \
    --withoutmod-_hashlib
}

package() {
  cd "$srcdir"/pypy2-v"$pkgver"-src

  # Prepare installation (do not package excluded C modules/libraries)
  pypy/tool/release/package.py --archive-name pypy --targetdir . \
          --without-audioop \
          --without-curses \
          --without-gdbm \
          --without-pwdgrp \
          --without-resource \
          --without-sqlite3 \
          --without-syslog \
          --without-tk
  mkdir unpacked
  tar xf pypy.tar.bz2 -C unpacked

  # Install pypy
  cd unpacked
  install -Dm755 pypy/bin/pypy "${pkgdir}"/opt/pypy/bin/pypy
  install -Dm755 pypy/bin/libpypy-c.so "${pkgdir}"/opt/pypy/bin/libpypy-c.so
  cp -r pypy/include pypy/lib_pypy pypy/lib-python pypy/site-packages "${pkgdir}"/opt/pypy/
  cd ..

  # Install symlink
  mkdir -p "${pkgdir}"/usr/bin "${pkgdir}"/usr/lib
  ln -s /opt/pypy/bin/pypy "${pkgdir}"/usr/bin/pypy
  ln -s /opt/pypy/bin/libpypy-c.so "${pkgdir}"/usr/lib/libpypy-c.so

  # Install misc stuff
  install -Dm644 README.rst "${pkgdir}"/opt/pypy/README.rst
  install -Dm644 LICENSE "${pkgdir}"/opt/pypy/LICENSE
  install -Dm644 LICENSE "${pkgdir}"/usr/share/licenses/pypy/LICENSE
}
