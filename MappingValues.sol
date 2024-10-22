// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.8.27;

contract StructureMapping {
    struct student{
        uint8 rollno;
        string name;
        string subject;
        uint8 marks;
    }

    student s1;

    // creating mapping(key => address)
    mapping (address => student) public result;

    // Copy address of Public on left side
    function addDetails(address addr, uint8 rn, string memory nm, string memory sub, uint8 m) public {

        s1.rollno = rn;

        s1.name = nm;
        
        s1.subject = sub;
        
        s1.marks = m;

        result[addr] = s1; // storing address of mapping in result mapping
        
    }

    // Function to retrive data
    function getDetails(address addr) view public returns (student memory) {
        return result[addr]; // returns data from mapping
    }

    function remove(address addr) public {
        delete result[addr]; // delete mapping
    }
}