// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract FibonacciGenerator {
    // Function to generate Fibonacci series up to a given number
    function generateFibonacci(uint256 n) public pure returns (uint256[] memory) {
        require(n > 0, "Input must be a positive integer");
        uint256[] memory fibSequence = new uint256[](n);
        fibSequence[0] = 0;
        if (n == 1) {
            return fibSequence;
        }
        fibSequence[1] = 1;
        for (uint256 i = 2; i < n; i++) {
            fibSequence[i] = fibSequence[i - 1] + fibSequence[i - 2];
        }
        return fibSequence;
    }
}