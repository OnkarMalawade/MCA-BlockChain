// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract StudentMarks {
    struct Student {
        uint256[6] marks; // Array to hold marks for six subjects
    }

    mapping(address => Student) private students;

    // Function to set marks for a student
    function setMarks(uint256[6] memory _marks) public {
        require(_marks.length == 6, "Must provide marks for six subjects");
        students[msg.sender].marks = _marks;
    }

    // Function to calculate the percentage of marks obtained
    function calculatePercentage() public view returns (uint256) {
        Student storage student = students[msg.sender];
        uint256 totalMarks = 0;
        uint256 maxMarks = 600; // Assuming each subject is out of 100

        for (uint256 i = 0; i < 6; i++) {
            totalMarks += student.marks[i];
        }

        // Calculate percentage
        return (totalMarks * 100) / maxMarks;
    }
}