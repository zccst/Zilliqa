#!/bin/bash

NUMALLNODE=8
while getopts "n:" opt; do
  case $opt in
    n)
      echo "NUMALLNODE = $OPTARG"
      NUMALLNODE=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG"
      ;;
  esac
done


let PORT_BEGIN=5001

let NUM_DSNODE=NUMALLNODE/2
let FIRST_SHARD_NODE=NUMALLNODE/2+1
let PORT_END=5000+$NUMALLNODE

# clean up persistent storage
rm -rf local_run/node*

#sudo sysctl net.core.somaxconn=102400;
#sudo sysctl net.core.netdev_max_backlog=65536;
#sudo sysctl net.ipv4.tcp_tw_reuse=1;
#sudo sysctl -w net.ipv4.tcp_rmem='65536 873800 1534217728';
#sudo sysctl -w net.ipv4.tcp_wmem='65536 873800 1534217728';
#sudo sysctl -w net.ipv4.tcp_mem='65536 873800 1534217728';


python tests/Zilliqa/test_zilliqa_local.py stop
python tests/Zilliqa/test_zilliqa_local.py setup $NUMALLNODE
python tests/Zilliqa/test_zilliqa_local.py start $NUM_DSNODE

echo "starting...6s"

sleep 6

#set primary
for ((ds=1; ds<=$NUM_DSNODE; ds++))
do
    python tests/Zilliqa/test_zilliqa_local.py sendcmd $ds 01000000000000000000000000000100007F00001389
done
sleep 10

# PoW submission should be multicasted to all DS committee members
for ((node=$FIRST_SHARD_NODE; node<=$NUMALLNODE; node++))
do
    python tests/Zilliqa/test_zilliqa_local.py startpow $node $NUM_DSNODE 0000000000000001 03 2b740d75891749f94b6a8ec09f086889066608e4418eda656c93443e8310750a e8cc9106f8a28671d91e2de07b57b828934481fadf6956563b963bb8e5c266bf
done


for ((port=$PORT_BEGIN; port<=$PORT_END; port++))
do
    python tests/Zilliqa/test_zilliqa_local.py sendtxn $port
done

