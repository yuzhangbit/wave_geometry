#!/bin/bash
set -e  # exit on first error
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


main() {
  sudo apt-get update
  sudo apt-get install -y libboost1.58-dev libeigen3-dev libgtest-dev

  cd $SCRIPT_DIR && cd .. && mkdir -p build && cd build
  cmake .. && make && make test && sudo make install
}


main
