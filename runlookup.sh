#!/bin/bash

ZILLIQA_TOP=$PWD

while getopts "n:b" opt; do
  case $opt in
    b)
        rm -rf build_lookup/bin
        make lookup
      ;;
    \?)
      echo "Invalid option: -$OPTARG"
      ;;
  esac
done

cd build_lookup
$ZILLIQA_TOP/tests/Node/test_node_lookup.sh

