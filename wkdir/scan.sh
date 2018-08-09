#!/bin/bash

#ZILLIQA_TOP="$(dirname $0)"/..
ZILLIQA_TOP=$HOME/go/src/github.com/okblockchainlab/Zilliqa
echo '$ZILLIQA_TOP: '$ZILLIQA_TOP

cd $ZILLIQA_TOP/build/local_run/node_0001

$ZILLIQA_TOP/build/bin/dbscan



