// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract StudentInformation {
    // Struct to represent a student
    struct Student {
        uint256 rollNo;
        string name;
        string class_;
        string department;
        string courseEnrolled;
    }

    // Mapping to store students by roll number
    mapping(uint256 => Student) private students;

    // Function to add a new student
    function addStudent(uint256 rollNo, string memory name, string memory class_, string memory department, string memory courseEnrolled) public {
        require(rollNo > 0, "Roll number must be greater than zero");
        require(bytes(name).length > 0, "Name cannot be empty");
        require(bytes(class_).length > 0, "Class cannot be empty");
        require(bytes(department).length > 0, "Department cannot be empty");
        require(bytes(courseEnrolled).length > 0, "Course enrolled cannot be empty");

        students[rollNo] = Student(rollNo, name, class_, department, courseEnrolled);
    }

    // Function to search for a student by roll number
    function searchStudent(uint256 rollNo) public view returns (Student memory) {
        require(students[rollNo].rollNo > 0, "Student not found");
        return students[rollNo];
    }

    // Function to display all student information
    function displayAllStudents() public view returns (Student[] memory) {
        uint256 count = 0;
        for (uint256 i = 1; i <= 100; i++) {
            if (students[i].rollNo > 0) {
                count++;
            }
        }

        Student[] memory allStudents = new Student[](count);
        uint256 index = 0;
        for (uint256 i = 1; i <= 100; i++) {
            if (students[i].rollNo > 0) {
                allStudents[index] = students[i];
                index++;
            }
        }

        return allStudents;
    }
}