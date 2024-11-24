// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CompoundInterest {
    // State variables
    address public owner;
    uint256 public principal;
    uint256 public rate; // Interest rate in percentage
    uint256 public time;  // Time in years

    // Events
    event InterestCalculated(uint256 totalAmount);

    // Constructor
    constructor() {
        owner = msg.sender; // Set the contract creator as the owner
    }

    // Function to set principal, rate, and time
    function setParameters(uint256 _principal, uint256 _rate, uint256 _time) public payable{
        require(msg.sender == owner, "Only the owner can set parameters");
        principal = _principal;
        rate = _rate;
        time = _time;
    }

    // Function to calculate compound interest
    function calculateCompoundInterest() public returns (uint256) {
        uint256 totalAmount = principal * (1 + rate / 100) ** time;
        emit InterestCalculated(totalAmount);
        return totalAmount;
    }
}