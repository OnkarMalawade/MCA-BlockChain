// Demonstrate Array
// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.8.27;

// create a Contract
contract FixedSizeArray {
    // Declaring state variable of Array
    uint[6] data1;

    //Defining the functions
    function array_example() public returns (int[5] memory, uint[6] memory){
        int[5] memory data = [int(50), -63, 77, -28, 90];
        // local variable type
        data1 = [uint(10), 20, 30, 40, 50, 60];

        return (data, data1); // Returning the values
    }
}