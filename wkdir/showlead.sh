#!/bin/bash

ZILLIQA_TOP="$(dirname $0)"/..

echo '$ZILLIQA_TOP: '$ZILLIQA_TOP

for idx in {1..9}
do
    echo $idx":"
    cat $ZILLIQA_TOP/build/local_run/node_000$idx/epochinfo-00001-log.txt
done

for idx in {10..20}
do
    echo $idx":"
    cat $ZILLIQA_TOP/build/local_run/node_00$idx/epochinfo-00001-log.txt
done

