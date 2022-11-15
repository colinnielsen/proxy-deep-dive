// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/// @dev TLDR: data is stored as an array with indicies ranging from 0 -> 2**256-1 
contract StorageSlots {
    uint256 variable1; // slot 0
    bytes32 variable2; // slot 1
    uint128 halfSizeVar; // slot 2
    uint128 halfSizeVar2; // slot 2
    bytes32 other; // slot 3

    function setVar1(uint256 newVar) public  {
        variable1 = newVar; // this tells the EVM to write newVar at storage slot 0
    }

    function setHalfSizeVar1(uint128 newHalfSize) public {
        halfSizeVar = newHalfSize; // this tells the evm to load storage slot 2, and put the newHalfSize param in the left side of that 32 byte chunk
    }
}