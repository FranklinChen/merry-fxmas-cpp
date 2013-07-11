# merry-fxmas for C++

Say "Merry Christmas" 25 times counting down, using a C++ template to unroll the loop.

Use some [`C++11`](http://www.stroustrup.com/C++11FAQ.html) syntax, just for kicks.

Testing using Apple clang version 4.2, but should work wherever C++11 is supported.

## Setup

The project uses [CMake](http://www.cmake.org/) to build.

[`googletest`](https://code.google.com/p/googletest/) is used for testing. It is not distributed in this repository. You need to download it and put it at subdirectory `gtest`.

Then run:

``` console
$ mkdir build
$ cd build
$ cmake ..
$ make
$ ./merry_test
$ ./main
```
