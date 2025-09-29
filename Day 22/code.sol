// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.0;  

contract MunawarConstructor {  
    // State variables  
    address public owner;  
    string public contractName;  

    // Constructor to initialize state variables  
    constructor(string memory _name) {  
        owner = msg.sender;  // Sets the deployer as the owner  
        contractName = _name;  // Sets the initial contract name  
    }  

    // Function to check if the caller is the owner  
    function isOwner() public view returns (bool) {  
        return msg.sender == owner;  
    }  
}  
