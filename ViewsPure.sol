// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ViewAndPureFunctions {
    // State variable to store a number
    uint256 private storedNumber;

    // Constructor to initialize the stored number
    constructor(uint256 initialNumber) {
        storedNumber = initialNumber;
    }

    // View function to get the stored number
    function getStoredNumber() public view returns (uint256) {
        return storedNumber;
    }

    // Pure function to add two numbers
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // Pure function to multiply two numbers
    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }
}