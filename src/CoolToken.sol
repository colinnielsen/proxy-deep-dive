// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "solmate/tokens/ERC20.sol";

contract CoolToken is ERC20 {
    constructor() ERC20("Cool token", "COOL", 18) {
        _mint(msg.sender, 10 ether);
    }
}

contract CoolTokenWithFallback is ERC20 {
    constructor() ERC20("Cool token", "COOL", 18) {
        _mint(msg.sender, 10 ether);
    }

    fallback() external {
        _mint(msg.sender, 1 ether);
    }

    receive() external payable {
        _mint(msg.sender, 100 ether);
    }
}