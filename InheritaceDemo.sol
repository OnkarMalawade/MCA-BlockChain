// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Employee{
    string internal name;
    string internal age;
    string internal sal;
    constructor(string memory _name, string memory _age, string memory _sal){
        name = _name;
        age = _age;
        sal = _sal;
    }
    function updateSalary (string memory _newSal) public {
        sal = _newSal;
    }
    function updateAge (string memory _newAge) public {
        age = _newAge;
    }
    function getEmployeeDetails() public view returns (string memory, string memory, string memory){
        return (name,age,sal);
    }
}

contract Manager is Employee {
    string public department;

    constructor(string memory _name, string memory _age, string memory _sal, string memory _dept) Employee (_name, _age, _sal) {
        department = _dept;
    }

    function getManagerDetails() public view returns (string memory, string memory, string memory, string memory){
        return (name, age, sal, department);
    }
}