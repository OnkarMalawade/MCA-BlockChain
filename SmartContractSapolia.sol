// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FundManager {
    // Address of the contract owner
    address public owner;

    // Constructor to set the owner as the contract deployer
    constructor() {
        owner = msg.sender;
    }

    // Modifier to restrict access to the contract owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can withdraw funds");
        _;
    }

    // Function to deposit Ether into the contract
    function deposit() public payable {
        require(msg.value > 0, "You must send some ether to deposit");
    }

    // Function to withdraw Ether from the contract (only owner)
    function withdraw(uint _amount) public onlyOwner {
        require(address(this).balance >= _amount, "Insufficient balance in contract");
        payable(msg.sender).transfer(_amount);
    }

    // Function to check contract balance
    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }
}
