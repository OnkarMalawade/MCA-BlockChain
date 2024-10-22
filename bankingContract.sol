// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    // State variable to store the balance
    uint256 private balance;

    // Constructor to initialize balance
    constructor() {
        balance = 0;
    }

    // Function to add (deposit) amount to the balance
    function addAmount(uint256 amount) public {
        balance += amount;
    }

    // Function to withdraw amount from the balance
    function withdrawAmount(uint256 amount) public {
        require(amount <= balance, "Insufficient balance");
        balance -= amount;
    }

    // Function to check the remaining balance
    function checkBalance() public view returns (uint256) {
        return balance;
    }
}
