// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract FactorialCalculator {
    // Function to calculate factorial of a number
    function factorial(uint16 n) public pure returns (uint16) {
        require(n >= 0, "Input must be a non-negative integer");
        if (n == 0) {
            return 1; // Base case: 0! = 1
        } else {
            return n * factorial(n - 1); // Recursive case
        }
    }
}