// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ExplicitConversionExample {
    uint256 public largeNumber; // 256-bit unsigned integer
    uint8 public smallNumber;   // 8-bit unsigned integer

    function setLargeNumber(uint256 _num) public {
        largeNumber = _num;

        // Explicit conversion from uint256 to uint8
        smallNumber = uint8(largeNumber); // This may truncate if largeNumber > 255
    }
}
