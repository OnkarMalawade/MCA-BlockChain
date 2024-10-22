// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract StructureDemo1{
    // structure like C program
    struct Book{
        string title;
        string author;
        uint book_id;
    }

    // variable object created
    Book b1;

    // setter method
    /*
    constructor() {
        b1=Book('Hello JS', 'Onkar', 101);
    } */
    function setBook() public {
         b1=Book('Hello JS', 'Onkar', 101);
     }

    // add values to it
    function enterBkDtls(string memory title, string memory auth, uint bid) public {
        b1=Book(title, auth, bid);
    }

    // Getter method
    function getBookDtls() public view returns(string memory,string memory,uint) {
        return (b1.title,b1.author,b1.book_id);
    }
} 