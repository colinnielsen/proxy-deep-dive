// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

uint256 constant MY_RANDO_SLOT = 124352352352362151212;
struct StorageLayout {
    uint256 var1;
}
contract StorageSlots {
    function getStorage() internal pure returns (StorageLayout storage) {
        StorageLayout storage customStorage;
        assembly {
            customStorage.slot := MY_RANDO_SLOT
        }
        return customStorage;
    }
}
