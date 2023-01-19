// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// 0xc5f16f0fcc639fa48a6947836d9850f504798523bf8c9a3a87d5876cf622bcf7
bytes32 constant IMPLEMENTATION_STORAGE_SLOT = keccak256("PROXIABLE");

abstract contract ProxiableLogicContract { 
    function updateCodeAddress(address newAddress) internal {
        require(
            bytes32(IMPLEMENTATION_STORAGE_SLOT) == ProxiableLogicContract(newAddress).proxiableUUID(),
            "Not compatible"
        );
        assembly {
            sstore(IMPLEMENTATION_STORAGE_SLOT, newAddress)
        }
    }
    function proxiableUUID() public pure returns (bytes32) {
        return IMPLEMENTATION_STORAGE_SLOT;
    }
}