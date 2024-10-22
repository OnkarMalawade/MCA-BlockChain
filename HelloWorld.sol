// Hello World Smart Contract
// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.8.27;

contract HelloWorld {
    function get()public pure returns (string memory str) {
        str = "Hello World";
    } 
}