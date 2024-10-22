// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract PrimeChecker {
    // Function to check if a number is prime
    function isPrime(uint256 n) public pure returns (bool) {
        require(n > 0, "Input must be a positive integer");
        if (n == 1) {
            return false; // 1 is not a prime number
        }
        for (uint256 i = 2; i * i <= n; i++) {
            if (n % i == 0) {
                return false; // n is divisible by i, so it's not prime
            }
        }
        return true; // n is prime
    }
}