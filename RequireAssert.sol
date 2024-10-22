// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/*
Assert() : Used to check for internal errors, invariants, and code that should never be false. A failing assertion usually indicates a bug. 
Require() : Used to ensure valid conditions, such as inputs, contract state variables, and return values from external contracts. It's generally recommended to use require for most cases because it's a safer way to handle errors.
Revert() : A direct revert can be triggered using the revert statement and the revert function.
*/

contract AssertDemo {
    uint public count;
    function increment() public returns (uint) {
        count += 1;
        return count;
    }
    function decrement() public returns (uint) {
        require(count > 0, "Count must be greater than zero");
        count -= 1;
        return count;
    }
    function checkCountInVarient() public view {
        assert(count >= 1);
    }
}

