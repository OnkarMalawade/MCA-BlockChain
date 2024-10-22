// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract WhileLoopExample {
    // Function to calculate the sum of the first n natural numbers
    function calculateSum(uint256 n) public pure returns (uint256) {
        uint256 sum = 0;
        uint256 i = 1;

        // While loop to calculate the sum
        while (i <= n) {
            sum += i;  // Add the current number to the sum
            i++;       // Increment i by 1
        }

        return sum;  // Return the calculated sum
    }
}
