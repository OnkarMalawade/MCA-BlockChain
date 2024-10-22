// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract FunctionScopeDemo {
    function publicFunction() public pure returns (string memory) {
        return "Public function Called";
    }
    function privateFunction() private pure returns (string memory) {
        return "Private function Called";
    }
    function internalFunction() internal pure returns (string memory) {
        return "Internal function called";
    }
    function externalFunction() external pure returns (string memory){
        return "External function called";
    }
}

contract ExternalCaller{
    function callerExternalFunction(address _contractAddress) public pure returns (string memory) {
        FunctionScopeDemo demo = FunctionScopeDemo(_contractAddress);
        return demo.externalFunction();
    }
}