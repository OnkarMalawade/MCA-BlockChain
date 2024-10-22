// Dynamic Smart Contract
// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.8.27;

contract Types{
    // dynamic array
    int[] data1;
    // static array
    uint[] data = [10, 20, 30, 40, 50, 60];

    function dynamic_array() public returns (uint[] memory, int[] memory) {
        data1 = [int(-60), 70, 120, -120];
        return (data, data1);
    }
}