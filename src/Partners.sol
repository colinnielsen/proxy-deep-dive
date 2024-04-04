// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;





TX___
from:  
to: 
data: 
value:  

address: 0x1111
contract AssertivePartner {
    string public dinnerLocation;


    function dinnerPlans() public {
        dinnerLocation = msg.sender + msg.value + unicode"Illegal Pete's 🌮";
    }
}







































TX___
from: 0x5555
to:
data: 
value: 

address: 0x9999
contract IndecisivePartner {
    string public dinnerLocation = "Chipolte";

    function whereShouldWeGoToDinner() public {
        (bool success, ) = 0x1111.call("dinnerPlans()")

        if (!success) revert("couples therapy");
    }
}
