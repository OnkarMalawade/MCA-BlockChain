// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ElectricityBillCalculator {
    // Struct to represent a consumer
    struct Consumer {
        string name;
        string address_;
        uint256 consumerID;
        uint256 units;
        uint256 amount;
    }

    // Mapping to store consumers by consumer ID
    mapping(uint256 => Consumer) private consumers;

    // Function to add a new consumer
    function addConsumer(uint256 consumerID, string memory name, string memory address_, uint256 units) public {
        require(consumerID > 0, "Consumer ID must be greater than zero");
        require(bytes(name).length > 0, "Name cannot be empty");
        require(bytes(address_).length > 0, "Address cannot be empty");
        require(units >= 0, "Units cannot be negative");

        uint256 amount = calculateBill(units);
        consumers[consumerID] = Consumer(name, address_, consumerID, units, amount);
    }

    // Function to calculate the total electricity bill
    function calculateBill(uint256 units) internal pure returns (uint256) {
        uint256 amount;
        if (units <= 50) {
            amount = units * 50; // Rs. 0.50/unit
        } else if (units <= 150) {
            amount = 50 * 50 + (units - 50) * 75; // Rs. 0.50/unit for first 50 units, Rs. 0.75/unit for next 100 units
        } else if (units <= 250) {
            amount = 50 * 50 + 100 * 75 + (units - 150) * 120; // Rs. 0.50/unit for first 50 units, Rs. 0.75/unit for next 100 units, Rs. 1.20/unit for next 100 units
        } else {
            amount = 50 * 50 + 100 * 75 + 100 * 120 + (units - 250) * 150; // Rs. 0.50/unit for first 50 units, Rs. 0.75/unit for next 100 units, Rs. 1.20/unit for next 100 units, Rs. 1.50/unit for units above 250
        }

        // Additional surcharge of 20%
        amount = amount + (amount * 20 / 100);
        return amount;
    }

    // Function to display the information of a consumer
    function displayConsumer(uint256 consumerID) public view returns (Consumer memory) {
        require(consumers[consumerID].consumerID > 0, "Consumer not found");
        return consumers[consumerID];
    }

    // Function to display the information of all consumers
    function displayAllConsumers() public view returns (Consumer[] memory) {
        uint256 count = 0;
        for (uint256 i = 1; i <= 100; i++) {
            if (consumers[i].consumerID > 0) {
                count++;
            }
        }

        Consumer[] memory allConsumers = new Consumer[](count);
        uint256 index = 0;
        for (uint256 i = 1; i <= 100; i++) {
            if (consumers[i].consumerID > 0) {
                allConsumers[index] = consumers[i];
                index++;
            }
        }

        return allConsumers;
    }
}