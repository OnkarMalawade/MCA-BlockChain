// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PalindromeChecker {
    // Function to check if a number is a palindrome
    function isPalindrome(uint256 n) public pure returns (bool) {
        uint256 reversed = reverse(n);
        return n == reversed;
    }

    // Function to reverse a number
    function reverse(uint256 n) internal pure returns (uint256) {
        uint256 reversed = 0;
        while (n > 0) {
            reversed = reversed * 10 + n % 10;
            n /= 10;
        }
        return reversed;
    }
}