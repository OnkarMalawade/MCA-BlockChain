// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract FunctionOverloadingExample {
    // Function to add two unsigned integers
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // Overloaded function to add three unsigned integers
    function add(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a + b + c;
    }

    // Overloaded function to add two signed integers
    function add(int256 a, int256 b) public pure returns (int256) {
        return a + b;
    }
}
