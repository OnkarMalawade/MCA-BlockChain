
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract EventDemo{
    uint256 public data = 0;
    event Increment(address owner);
    function getValue(uint _a, uint _b) public returns (uint256){
        emit Increment(msg.sender);
        data = _a + _b;
        return data;
    }
}