// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Greeter {
    string greeting = "hi";

    function setGreeting(string memory newGreeting) public {
        greeting = newGreeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }
}
