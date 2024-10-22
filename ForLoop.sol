// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ForLoopExample {
    // Function to calculate the sum of the first n natural numbers
    function calculateSum(uint256 n) public pure returns (uint256) {
        uint256 sum = 0;

        // For loop to calculate the sum
        for (uint256 i = 1; i <= n; i++) {
            sum += i;  // Add the current number to the sum
        }

        return sum;  // Return the calculated sum
    }
}
