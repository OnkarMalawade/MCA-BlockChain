// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

abstract contract Calculator {
    function getResult() public virtual returns (uint);
    function getMessage() public virtual pure returns (string memory){
        return "Calculating ... abstract contract called ...";
    }
}

contract Test is Calculator {
    function getResult() public override pure returns (uint) {
        uint a = 1;
        uint b = 2;
        uint res = a + b;
        return res;
    }
    function getMessage() public override pure returns (string memory) {
        return "Calculating ... test called ..."; 
     }
}