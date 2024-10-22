// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ArithmeticCalculator {
    // Function to add two numbers
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // Function to subtract two numbers
    function subtract(uint256 a, uint256 b) public pure returns (uint256) {
        require(b <= a, "Subtraction result would be negative");
        return a - b;
    }

    // Function to multiply two numbers
    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    // Function to divide two numbers
    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        require(b > 0, "Division by zero is not allowed");
        return a / b;
    }

    // Function to calculate modulus of two numbers
    function modulus(uint256 a, uint256 b) public pure returns (uint256) {
        require(b > 0, "Modulus by zero is not allowed");
        return a % b;
    }

    // Function to calculate exponentiation of two numbers
    function exponentiation(uint256 base, uint256 exponent) public pure returns (uint256) {
        uint256 result = 1;
        for (uint256 i = 0; i < exponent; i++) {
            result *= base;
        }
        return result;
    }
}