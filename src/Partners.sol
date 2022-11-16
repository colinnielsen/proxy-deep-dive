// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract AssertivePartner {
    string public dinnerLocation;

    function dinnerPlans() public {
        dinnerLocation = "Illegal Pete's 🌮";
    }
}

contract IndecisivePartner {
    string public dinnerLocation;

    function whereShouldWeGoToDinner(address partner) {
        (bool success, ) = partner.delegatecall(
            bytes4(keccak256("dinnerPlans()"))
        );
        if (!success) revert("couples therapy");
    }
}
