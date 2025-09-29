// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract MunawarFunctions {  
    string public name;  
    uint public balance;  

    // Constructor to initialize the name  
    constructor(string memory _name) {  
        name = _name;  
    }  

    // View function to get the name  
    function getName() public view returns (string memory) {  
        return name;  
    }  

    // State-changing function to set a new name  
    function setName(string memory _newName) public {  
        name = _newName;  
    }  

    // Payable function to receive Ether  
    function receiveFunds() public payable {  
        balance += msg.value;  
    }  

    // Pure function for calculation  
    function multiply(uint a, uint b) public pure returns (uint) {  
        return a * b;  
    }  
}  
