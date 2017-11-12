# MesaLock Linux Package

To ensure the safty and security of the user space environment, unlike other
Linux distributions, packages in MesaLock Linux are written in memory-safe
language (e.g., Rust and Go).

## Contributing

A package consist of a `BUILD` script and related files and patches. It is very
simple to include a new package in MesaLock Linux. The `BUILD` scirpt contians
two parts: metadata and building functions.

The build tool (`mkpkg`) will call following function in order:
  1. `prepare()`: downloading source code and prepare configration stuff
  2. `build()`: buiding sources
  3. `package()`: zip the output as a package
