#!/bin/bash
set -e  # exit on first error
VERSION="v3.13.0"

main() {
  cd /tmp
  #wget $URL
  export CXX=g++-7
  export CC=gcc-7
  sudo apt-get update
  sudo apt-get install build-essential make -y
  git clone --depth 1 --branch ${VERSION} https://github.com/Kitware/CMake.git
  cd CMake && ./bootstrap && make -j4 && sudo make install
  cd /tmp && rm -r CMake
}


main
