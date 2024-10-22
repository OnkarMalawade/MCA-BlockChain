// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface ICalculator {
    function getResult() external view returns (uint) ;
}

contract Test is ICalculator {
    constructor () {}
    function getResult() external override pure returns (uint){
           uint a = 10;
           uint b = 20;
           uint res = a + b;
           return res;
    }
}