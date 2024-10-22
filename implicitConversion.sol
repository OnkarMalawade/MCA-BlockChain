// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ImplicitConversionExample {
    uint8 public smallNumber;   // 8-bit unsigned integer
    uint256 public largeNumber; // 256-bit unsigned integer

    function setSmallNumber(uint8 _num) public {
        smallNumber = _num; // Implicit conversion from uint8 to uint256
        largeNumber = smallNumber; // Implicit conversion from uint8 to uint256
    }
}
