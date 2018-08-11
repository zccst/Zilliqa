#!/bin/bash
rm -rf build/bin
make
cd build
./tests/Node/test_node_simple.sh