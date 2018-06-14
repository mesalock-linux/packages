# MesaLock Linux Packages

[![Build Status](https://ci.mesalock-linux.org/api/badges/mesalock-linux/packages/status.svg?branch=master)](https://ci.mesalock-linux.org/mesalock-linux/packages)

To ensure the safty and security of the user space environment, unlike other
Linux distributions, packages in MesaLock Linux are written in memory-safe
language (e.g., Rust and Go). We select packages based on three metrics:
quality, functionality and security. Please read the [MesaLock Linux
documentation](https://docs.mesalock-linux.org) to learn more.

## Categories

There are four categories of all packages:
  - `core`: core packages to bootstrap the system
  - `community`: packages from community
  - `core-testing`: new core packages or new version for trying and testing
  - `community-testing`: new community packages or new version for trying and testing

Basically, `core` packages are essential packages to bootstrap the system and
have the basic function. `community` packages are other nice-to-have packages
written in Rust/Go. And `core-testing` and `community-testing` will aggressively
use latest version or newer version code for testing.

## Contributing new packages

A package consists of a `build.yml` script and related files and patches. It is very
simple to include a new package in MesaLock Linux. The `build.yml` is a YAML
file and should contain two parts: metadata and building functions.

The build tool (`mkpkg`) will make a package in following steps:
  1. downloading source code and/or extract it into `$builddir` directory
  2. `build`: building sources
  3. `check`: testing and checking functions
  3. `install`: zip the output as a package

There are several pre-defined variables which `mkpkg` will look for:
  - `name`, `version`, `description`, `url`, `skip_check` and `license`: package related metadata
  - `build`, `check`, `install`: script to build/check/install the package

Here are several pre-defined environment variables you can use in the script
  - `name`, `version`: package metadata information
  - `builddir`: directory for building package
  - `pkgdir`: directory to install compiled code

You can find more details in the `mkpkg` project:
[https://github.com/mesalock-linux/mkpkg](https://github.com/mesalock-linux/mkpkg)

### Example

Here is an example of `build.yml` script for `ripgrep`, a Rust grep tool.

```yml
package:
  name: ripgrep
  version: 0.8.0
  description: ripgrep combines the usability of The Silver Searcher with the raw speed of grep
  license: [MIT, Unlicense]
  url: https://github.com/BurntSushi/ripgrep
  skip_check: true

  source:
    - git+https://github.com/BurntSushi/$name.git

  prepare:
    - cd "$name".git && git checkout -B 0.8.0

  build:
    - cd "$name".git && cargo build --release
    - cd "$name".git && cargo test

  install:
    - cd "$name".git && install -D -m744 target/release/rg -t "$pkgdir"/bin/
```

## Maintainer

  - Mingshen Sun `<mssun@mesalock-linux.org>` [@mssun](https://github.com/mssun)

## License

The MesaLock Linux Packages project is provided under the [BSD license](LICENSE).
