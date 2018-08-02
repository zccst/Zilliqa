
#include <execinfo.h> // for backtrace
#include <signal.h>

#include "libUtils/Logger.h"
#include <algorithm>
#include <arpa/inet.h>
#include <iostream>
#include <libPersistence/Retriever.h>

#include "depends/NAT/nat.h"
#include "libNetwork/P2PComm.h"
#include "libNetwork/PeerStore.h"
#include "libUtils/DataConversion.h"
#include "libUtils/Logger.h"
#include "libZilliqa/Zilliqa.h"

using namespace std;
using namespace boost::multiprecision;

int main(int argc, const char* argv[])
{

    int tmpargc = argc;
    const char** tmpargv = argv;

    if (tmpargc == 0 && tmpargv == 0) {
        tmpargc = 0;
    }


//    bool result;

//    printf("blocked\n");
//    char ch = getchar();
//    while (ch != '\n')
//    {
//        ch = getchar();
//    }

    std::list<DSBlockSharedPtr> blocks;
    if (!BlockStorage::GetBlockStorage().GetAllDSBlocks(blocks))
    {
    }
    printf("std::list<DSBlockSharedPtr> blocks size: %lu\n", blocks.size());

    blocks.sort([](const DSBlockSharedPtr& a, const DSBlockSharedPtr& b) {
        return a->GetHeader().GetBlockNum() < b->GetHeader().GetBlockNum();
    });

    LOG_GENERAL(INFO, "---------------------------------------------------------");
    LOG_GENERAL(INFO, "------------------ Dump all DSBlocks --------------------");
    for (auto& block : blocks) {
        block->dump();
    }

    ///////////////////////////////////////////////////////////////

    std::list<TxBlockSharedPtr> txblocks;
    if (!BlockStorage::GetBlockStorage().GetAllTxBlocks(txblocks))
    {
    }
    printf("std::list<TxBlockSharedPtr> blocks size: %lu\n", txblocks.size());

    txblocks.sort([](const TxBlockSharedPtr& a, const TxBlockSharedPtr& b) {
        return a->GetHeader().GetBlockNum() < b->GetHeader().GetBlockNum();
    });

    LOG_GENERAL(INFO, "---------------------------------------------------------");
    LOG_GENERAL(INFO, "------------------ Dump all TxBlocks --------------------");

    for (auto& block : txblocks) {
        block->dump();
    }


    LOG_GENERAL(INFO, "---------------------------------------------------------");
    LOG_GENERAL(INFO, "------------------ Dump all Metadata --------------------");

    BlockStorage::GetBlockStorage().GetAllMetadata();

    return 0;
}
