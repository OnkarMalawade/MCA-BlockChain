// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MathematicalFunctions {
    // Function to demonstrate addition
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // Function to demonstrate subtraction
    function subtract(uint256 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }

    // Function to demonstrate multiplication
    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    // Function to demonstrate division
    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        require(b > 0, "Division by zero is not allowed");
        return a / b;
    }

    // Function to demonstrate modulus
    function modulus(uint256 a, uint256 b) public pure returns (uint256) {
        require(b > 0, "Modulus by zero is not allowed");
        return a % b;
    }

    // Function to demonstrate exponentiation
    function exponentiation(uint256 base, uint256 exponent) public pure returns (uint256) {
        uint256 result = 1;
        for (uint256 i = 0; i < exponent; i++) {
            result *= base;
        }
        return result;
    }

    // Function to demonstrate absolute value
    function absoluteValue(int256 a) public pure returns (uint256) {
        return a >= 0 ? uint256(a) : uint256(-a);
    }

    // Function to demonstrate minimum value
    function minimum(uint256 a, uint256 b) public pure returns (uint256) {
        return a < b ? a : b;
    }

    // Function to demonstrate maximum value
    function maximum(uint256 a, uint256 b) public pure returns (uint256) {
        return a > b ? a : b;
    }
}