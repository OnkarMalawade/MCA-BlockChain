// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.8.27;

contract ModifierDemo {
    // We will use the modifier to limit the function changePrice to only the owner of the contract
    address public owner;
    uint price;
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(msg.sender == owner, 'Only Owner is allowed to modify the price!');
        _;   // Asterisk is used to indicate that this function will be executed even if there is an exception.
        // This will allow us to do any other modification.
    }

    function changePrice(uint _price) public onlyOwner{
        price=_price;
    }

    function viewPrice() public view returns (uint){
        return price;
    }   
}