
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract VariableDemo {
    function getDetails() public payable returns (address, uint, uint256, uint){
        return (msg.sender, msg.value, gasleft(), tx.gasprice);
    }
}