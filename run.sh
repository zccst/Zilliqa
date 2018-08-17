#!/bin/bash

./runlookup.sh $@

ZILLIQA_TOP=$PWD
NODE_NUM=8

while getopts "n:b" opt; do
  case $opt in
    b)
        rm -rf build/bin
        make
      ;;
    n)
      echo "NODE_NUM = $OPTARG"
      NODE_NUM=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG"
      ;;
  esac
done


cd build
$ZILLIQA_TOP/tests/Node/test_node_simple.upd.sh -n $NODE_NUM

cd $ZILLIQA_TOP
ln -svnf ./build/local_run/node_0001 node01



