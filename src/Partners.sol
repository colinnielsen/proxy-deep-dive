// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract AssertivePartner {
    string public dinnerLocation;

    function dinnerPlans() public {
        dinnerLocation = unicode"Illegal Pete's 🌮";
    }
}

contract IndecisivePartner {
    string public dinnerLocation;

    function whereShouldWeGoToDinner(address partner) public {
        dinnerLocation = "Chipolte";
        (bool success, ) = partner.delegatecall(
            abi.encodePacked(bytes4(keccak256(bytes("dinnerPlans()"))))
        );

        if (!success) revert("couples therapy");
    }
}
