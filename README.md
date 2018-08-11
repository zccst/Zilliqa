# Zilliqa 

## Overview
| message-func type | handler | description | |  |  |
| :-----------: | :------ | ------------: | :----------- | :------: | ------------: |
|	0-0	|	PeerManager::ProcessHello	 | |  |   ||
|	0-1	|	PeerManager::ProcessAddPeer	 | |  |   ||
|	0-2	|	PeerManager::ProcessPing	 | |  |   ||
|	0-3	|	PeerManager::ProcessPingAll	 | |  |   ||
|	0-4	|	PeerManager::ProcessBroadcast	 | |  |   ||
|	1-0	|	DirectoryService::ProcessSetPrimary	 | |  |   ||
|	1-1	|	DirectoryService::ProcessPoWSubmission	 | |  |   ||
|	1-2	|	DirectoryService::ProcessDSBlockConsensus	 | |  |   ||
|	1-3	|	DirectoryService::ProcessMicroblockSubmission	 | |  |   ||
|	1-4	|	DirectoryService::ProcessFinalBlockConsensus	 | |  |   ||
|	1-5	|	DirectoryService::ProcessViewChangeConsensus	 | |  |   ||
|	2-0	|	Node::ProcessStartPoW	 | |  |   ||
|	2-1	|	Node::ProcessDSBlock	 | |  |   ||
|	2-2	|	Node::ProcessCreateTransaction	 | |  |   ||
|	2-3	|	Node::ProcessSubmitTransaction	 | |  |   ||
|	2-4	|	Node::ProcessMicroblockConsensus	 | |  |   ||
|	2-5	|	Node::ProcessFinalBlock	 | |  |   ||
|	2-6	|	Node::ProcessForwardTransaction	 | |  |   ||
|	2-7	|	Node::ProcessCreateTransactionFromLookup	 | |  |   ||
|	2-8	|	Node::ProcessVCBlock	 | |  |   ||
|	2-9	|	Node::ProcessDoRejoin	 | |  |   ||
|	3-0	|	ConsensusUser::ProcessSetLeader	 | |  |   ||
|	3-1	|	ConsensusUser::ProcessStartConsensus	 | |  |   ||
|	3-2	|	ConsensusUser::ProcessConsensusMessage	 | |  |   ||
|	4-0	|	Lookup::ProcessGetSeedPeersFromLookup	 | |  |   ||
|	4-1	|	Lookup::ProcessSetSeedPeersFromLookup	 | |  |   ||
|	4-2	|	Lookup::ProcessGetDSInfoFromSeed	 | |  |   ||
|	4-3	|	Lookup::ProcessSetDSInfoFromSeed	 | |  |   ||
|	4-4	|	Lookup::ProcessGetDSBlockFromSeed	 | |  |   ||
|	4-5	|	Lookup::ProcessSetDSBlockFromSeed	 | |  |   ||
|	4-6	|	Lookup::ProcessGetTxBlockFromSeed	 | |  |   ||
|	4-7	|	Lookup::ProcessSetTxBlockFromSeed	 | |  |   ||
|	4-8	|	Lookup::ProcessGetTxBodyFromSeed	 | |  |   ||
|	4-9	|	Lookup::ProcessSetTxBodyFromSeed	 | |  |   ||
|	4-10	|	Lookup::ProcessGetNetworkId	 | |  |   ||
|	4-11	|	Lookup::ProcessGetNetworkId	 | |  |   ||
|	4-12	|	Lookup::ProcessGetStateFromSeed	 | |  |   ||
|	4-13	|	Lookup::ProcessSetStateFromSeed	 | |  |   ||
|	4-14	|	Lookup::ProcessSetLookupOffline	 | |  |   ||
|	4-15	|	Lookup::ProcessSetLookupOnline	 | |  |   ||
|	4-16	|	Lookup::ProcessGetOfflineLookups	 | |  |   ||
|	4-17	|	Lookup::ProcessSetOfflineLookups	 | |  |   ||
## Overview
Zilliqa is a new blockchain platform capable of processing thousands of transactions per second with sharding built into it. With sharding| |       |   || Zilliqa has the potential to match throughput benchmarks set by traditional payment methods (such as _VISA_ and _MasterCard_). More importantly| |       |   || Zilliqa’s transaction throughput increases (roughly) linearly with its network size.

## _D24_ Testnet  
* [Block Explorer](https://explorer.zilliqa.com/home)
* [Wallet](https://wallet.zilliqa.com/)  
  
## _D24_ Testnet with Scilla support 
* [Interpreter IDE](https://ide.zilliqa.com/)  
* [Block Explorer](https://explorer-scilla.zilliqa.com)  
* [Wallet](https://wallet-scilla.zilliqa.com/)  

## Available Features
The current release has the following features implemented:
* Proof of Work 1 (PoW1) and 2 (PoW2) for joining the network
* Network sharding
* Directory Service
* Consensus for DS block| |       |   || Sharding structure| |       |   || Shard Microblock and Final block 
* [EC-Schnorr signature](https://en.wikipedia.org/wiki/Schnorr_signature)
* Data layer and accounts store 
* Looking up nodes to allow new nodes to join 
* Persistent storage for transactions
* [Merkle Patricia tree](https://github.com/ethereum/wiki/wiki/Patricia-Tree)
* Transaction verification
* View change
* [Zilliqa Wallet](https://github.com/Zilliqa/Zilliqa-Wallet)
* [Smart contract design and implementation](https://scilla.readthedocs.io)
* GPU (OpenCL and CUDA) support for PoW

In the coming months| |       |   || we plan to have the following features:
* Gossip protocol for network message broadcasting
* Incentive structure
* Further unit and integration tests
* Enhancement of existing features
* More operating system support
* And much more ...

## Minimum system requirements
To run Zilliqa| |       |   || we recommend the following minimum system requirements:
* x64 _Linux_ operating system such as _Ubuntu_
* Recent dual core processor
* 2 GB RAM

> Note: Presently we are in active development on Ubuntu 16.04. The support for
> building on other Ubuntu versions or other OSes is pending.

## Dependencies
To compile and run the Zilliqa codebase| |       |   || you will need the following dependencies to be installed on your machine:  
* `build-essential`
* `Boost` 
* `CMake`
* `clang-format`
* `git`
* `JsonCpp`
* `json-rpc-cpp`
* `LevelDB`
* `OpenSSL`
* `pkg-config`
* `libevent`
* `miniupnpc`
* `opencl`
* `Protobuf`
* Dependencies only required for builds with code coverage enabled
    * `gcov`
    * `lcov`
* Dependency only required for builds on Travis-CI
    * `curl`

For Ubuntu 16.04| |       |   || you can use the following commands (or refer to `./scripts/ci_install_deps.sh`) to install the dependencies:  

```bash
sudo apt-get update
```

```bash
sudo apt-get install git clang-format-5.0 clang-tidy-5.0 clang-5.0 libboost-system-dev libboost-filesystem-dev libboost-test-dev libssl-dev libleveldb-dev libjsoncpp-dev libsnappy-dev cmake libmicrohttpd-dev libjsonrpccpp-dev build-essential pkg-config libevent-dev libminiupnpc-dev ocl-icd-opencl-dev libprotobuf-dev protobuf-compiler
```

For Mac OS X (experimental)| |       |   || you can use the following command to install the dependencies:  
```bash
brew install pkg-config jsoncpp leveldb libjson-rpc-cpp libevent miniupnpc
```

# Running Zilliqa locally (using 10 shard nodes and DS node locally)  
1. Build Zilliqa from the source.  
` ./build.sh`

2. Run the local testnet script in `build` directory
`cd build |  - ||  - | ./tests/Node/test_node_simple.sh`  

3. Logs of each node can be found at `./local_run`

4. To terminate Zilliqa| |       |   ||   
`pkill zilliqa` 

If you wish to use CUDA supported GPU for PoW| |       |   || please download and install CUDA package from [NVIDIA offical webpage](https://developer.nvidia.com/cuda-downloads). You may need to reboot your PC for the installation take effect. After which| |       |   || please use the following build option to build Zilliqa with CUDA support.  
`./build.sh cuda`

## Running a Zilliqa Node on the public testnet 
If you are interested in running a node on the Zilliqa testnet| |       |   || please register [here](https://docs.google.com/forms/d/e/1FAIpQLSesn-MxThl4ocKCrjUYSPGc463E7-1I1O1v_GGccYbqfFr7zg/viewform)

## For further enquiries
If you have issues running a node| |       |   || please feel free to join our [Slack](https://invite.zilliqa.com/) and ask questions. You can also submit your issue at our [Github repository](https://github.com/Zilliqa/zilliqa/issues)

## Licence 
You can view our [licence here](https://github.com/Zilliqa/zilliqa/blob/master/LICENSE).

