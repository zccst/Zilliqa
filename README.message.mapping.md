# Zilliqa 

## Message mapping 
| message-func  | handler | description | |  
| :-----------: | :------ | ------------: | :----------- |
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
|	4-10|	Lookup::ProcessGetNetworkId	 | |  |   ||
|	4-11|	Lookup::ProcessGetNetworkId	 | |  |   ||
|	4-12|	Lookup::ProcessGetStateFromSeed	 | |  |   ||
|	4-13|	Lookup::ProcessSetStateFromSeed	 | |  |   ||
|	4-14|	Lookup::ProcessSetLookupOffline	 | |  |   ||
|	4-15|	Lookup::ProcessSetLookupOnline	 | |  |   ||
|	4-16|	Lookup::ProcessGetOfflineLookups	 | |  |   ||
|	4-17|	Lookup::ProcessSetOfflineLookups	 | |  |   ||

