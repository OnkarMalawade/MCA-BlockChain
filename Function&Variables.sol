// Demonstrate Smart Contract
// simple function set value to the variable in it write-read
// view we can only read
// pure we can neither read nor write
// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.8.27;

contract DemonstrateFunction{
    uint16 num = 10; // state variable
    function getInput3(uint16 n1, uint16 n2) public returns (uint16){
        num = 100;
        return n1 + n2 + num;
    }
    function getInput2(uint16 n1, uint16 n2) public view returns (uint16){
        return n1 + n2 + num;
    }
    function getInput(uint16 n1, uint16 n2) public pure returns (uint16){
        return n1 + n2;
    }
    function getInfo() public returns (uint16){
        return num += 11;
    }
    function getData() public view returns (uint16){
        //num += 3;
        return num;
    }
    function getData01() public pure returns (uint16){
        //num += 3;
        return 111;
    }
}