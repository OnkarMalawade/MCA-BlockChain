// Demonstrate Array
// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.8.27;

contract VariableScopeDemo {
    uint public publicNumber = 10;
    uint private privateNumber = 20;
    uint internal internalNumber = 30;

    function accessVariables() public view returns (uint, uint, uint) {
        return (publicNumber,privateNumber,internalNumber);
    }
}

contract Derived is VariableScopeDemo{
    function accessVariablePrivate() public view returns (uint, uint) {
        return (publicNumber,internalNumber);
    }
}